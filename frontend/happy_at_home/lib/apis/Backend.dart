import 'package:dart_json_mapper/dart_json_mapper.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:happyathome/UserState.dart';
import 'package:happyathome/models/Emoji.dart';
import 'package:happyathome/models/Feeling.dart';
import 'package:happyathome/models/Post.dart';
import 'package:happyathome/models/Reaction.dart';
import 'package:happyathome/models/ReactionSummary.dart';
import 'package:happyathome/models/Reply.dart';
import 'package:happyathome/models/TargetFeeling.dart';
import 'package:happyathome/models/Time.dart';
import 'package:happyathome/models/User.dart';
import 'package:happyathome/utils/LogClient.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class Backend {
  static const baseUrl = 'https://backend-sas4ozc6wa-ew.a.run.app/api/v1';

  static Future<User> getUserById(String id) async {
    return _get('user/$id');
  }

  static Future<List<User>> getUsers() async {
    return _get('user');
  }

  static Future<User> postUser(CreateUser user) async {
    return _post('user', user);
  }

  static Future<String> setFeelings(User user, List<Feeling> feelings) async {
    return _putRaw('feeling', feelings);
  }

  static Future<String> setTime(User user, int time) async {
    return _putRaw('user/${user.id}/time', CreateTime(time));
  }

  static Future<ReactionSummary> getReactionSummaryReceived() async {
    return _get('user/reactions/received');
  }

  static Future<ReactionSummary> getReactionSummaryGiven() async {
    return _get('user/reactions/given');
  }

  static Future<Post> getPostById(int id) async {
    return _get('post/$id');
  }

  static Future<List<Post>> getPosts() async {
    return _get('post');
  }

  static Future<Post> postPost(CreatePost post) async {
    return _post('post', post);
  }

  static Future<Reply> postReply(Post post, CreateReply reply) async {
    return _post('reply/post/${post.id}', reply);
  }

  static Future<Reaction> postReactionToPost(Post post, Reaction reaction) async {
    return _post('post/${post.id}/reaction', reaction);
  }

  static Future<Reaction> postReactionToReply(Post post, Reply reply, Reaction reaction) async {
    return _post('reply/${reply.id}/reaction', reaction);
  }

  // ------------------------------------------------------------------------------

  static BaseClient _client = LogClient(http.Client());

  static Future<T> _get<T>(String path) async {
    final response = await _getRaw(path);
    return JsonMapper.deserialize<T>(response);
  }

  static Future<T> _post<T>(String path, Object object) async {
    final response = await _postRaw(path, object);
    return JsonMapper.deserialize<T>(response);
  }

  static Future<String> _getRaw(String path) async {
    final url = '$baseUrl/$path';
    final response = await _client.get(url, headers: _createHeaders());
    if (response.statusCode >= 200 && response.statusCode < 400) {
      return response.body;
    } else {
      throw Exception('Failed to load $url');
    }
  }

  static Future<String> _postRaw<T>(String path, Object object) async {
    final url = '$baseUrl/$path';

    final response = await _client.post(url, headers: _createHeaders(), body: JsonMapper.serialize(object));

    if (response.statusCode >= 200 && response.statusCode < 400) {
      return response.body;
    } else {
      throw Exception('Failed to load $url with status code ${response.statusCode}');
    }
  }

  static Future<String> _putRaw<T>(String path, Object object) async {
    final url = '$baseUrl/$path';

    final response = await _client.put(url, headers: _createHeaders(), body: JsonMapper.serialize(object));

    if (response.statusCode >= 200 && response.statusCode < 400) {
      return response.body;
    } else {
      throw Exception('Failed to load $url with status code ${response.statusCode}');
    }
  }

  static Map<String, String> _createHeaders() {
    var headers = <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    };
    final user = UserState().user;
    if (user != null && user.id != null) {
      headers.putIfAbsent('X-User-Id', () => user.id);
    }
    return headers;
  }

  static void init() {
    JsonMapper().useAdapter(JsonMapperAdapter(valueDecorators: {
      typeOf<List<Feeling>>(): (value) => value.cast<Feeling>(),
      typeOf<Set<TargetFeeling>>(): (value) => value.cast<TargetFeeling>(),
      typeOf<List<Post>>(): (value) => value.cast<Post>(),
      typeOf<List<Reaction>>(): (value) => value.cast<Reaction>(),
      typeOf<List<Reply>>(): (value) => value.cast<Reply>(),
    }, converters: {
      typeOf<Map<Emoji, int>>(): MyConverter(),
    }));
  }
}

class MyConverter extends ICustomConverter {
  @override
  fromJSON(jsonValue, [JsonProperty jsonProperty]) {
    Map<Emoji, int> map = {};
    jsonValue.forEach((k, v) => map.putIfAbsent(EnumToString.fromString(Emoji.values, k.toString()), ()=>v));
    return map;
  }

  @override
  toJSON(object, [JsonProperty jsonProperty]) {
    return null; // not implemented yet
  }
}
