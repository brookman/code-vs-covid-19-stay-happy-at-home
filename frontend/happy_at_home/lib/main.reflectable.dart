// This file has been generated by the reflectable package.
// https://github.com/dart-lang/reflectable.

import 'dart:core';

import 'package:dart_json_mapper/src/model/annotations.dart' as prefix0;
import 'package:happyathome/models/Emoji.dart' as prefix7;
import 'package:happyathome/models/Feeling.dart' as prefix3;
import 'package:happyathome/models/Post.dart' as prefix5;
import 'package:happyathome/models/Reaction.dart' as prefix2;
import 'package:happyathome/models/Reply.dart' as prefix4;
import 'package:happyathome/models/TargetFeeling.dart' as prefix6;
import 'package:happyathome/models/User.dart' as prefix1;
import 'package:happyathome/utils/EnumStringConverter.dart' as prefix8;
import 'package:reflectable/mirrors.dart' as m;
import 'package:reflectable/reflectable.dart' as r show Reflectable;
import 'package:reflectable/src/reflectable_builder_based.dart' as r;

final _data = <r.Reflectable, r.ReflectorData>{
  const prefix0.JsonSerializable(): r.ReflectorData(
      <m.TypeMirror>[
        r.NonGenericClassMirrorImpl(
            r'User',
            r'.User',
            7,
            0,
            const prefix0.JsonSerializable(),
            const <int>[0, 1, 2, 3, 4, 32],
            const <int>[33, 34, 35, 36, 37, 27, 28, 29, 30, 31],
            const <int>[],
            -1,
            {},
            {},
            {
              r'': (b) => (id, name, photo, photoContentType, feelings) => b
                  ? prefix1.User(id, name, photo, photoContentType, feelings)
                  : null
            },
            -1,
            0,
            const <int>[],
            const <Object>[prefix0.jsonSerializable],
            null),
        r.NonGenericClassMirrorImpl(
            r'CreateUser',
            r'.CreateUser',
            7,
            1,
            const prefix0.JsonSerializable(),
            const <int>[5, 6, 7, 8, 42],
            const <int>[33, 34, 35, 36, 37, 38, 39, 40, 41],
            const <int>[],
            -1,
            {},
            {},
            {
              r'': (b) => (id, name, photo, photoContentType) => b
                  ? prefix1.CreateUser(id, name, photo, photoContentType)
                  : null
            },
            -1,
            1,
            const <int>[],
            const <Object>[prefix0.jsonSerializable],
            null),
        r.NonGenericClassMirrorImpl(
            r'Reaction',
            r'.Reaction',
            7,
            2,
            const prefix0.JsonSerializable(),
            const <int>[9, 44],
            const <int>[33, 34, 35, 36, 37, 43],
            const <int>[],
            -1,
            {},
            {},
            {r'': (b) => (id) => b ? prefix2.Reaction(id) : null},
            -1,
            2,
            const <int>[],
            const <Object>[prefix0.jsonSerializable],
            null),
        r.NonGenericClassMirrorImpl(
            r'Feeling',
            r'.Feeling',
            7,
            3,
            const prefix0.JsonSerializable(),
            const <int>[10, 46],
            const <int>[33, 34, 35, 36, 37, 45],
            const <int>[],
            -1,
            {},
            {},
            {r'': (b) => (emoji) => b ? prefix3.Feeling(emoji) : null},
            -1,
            3,
            const <int>[],
            const <Object>[prefix0.jsonSerializable],
            null),
        r.NonGenericClassMirrorImpl(
            r'Reply',
            r'.Reply',
            7,
            4,
            const prefix0.JsonSerializable(),
            const <int>[11, 48],
            const <int>[33, 34, 35, 36, 37, 47],
            const <int>[],
            -1,
            {},
            {},
            {r'': (b) => (id) => b ? prefix4.Reply(id) : null},
            -1,
            4,
            const <int>[],
            const <Object>[prefix0.jsonSerializable],
            null),
        r.NonGenericClassMirrorImpl(
            r'Post',
            r'.Post',
            7,
            5,
            const prefix0.JsonSerializable(),
            const <int>[12, 13, 14, 15, 16, 17, 18, 56],
            const <int>[33, 34, 35, 36, 37, 49, 50, 51, 52, 53, 54, 55],
            const <int>[],
            -1,
            {},
            {},
            {
              r'': (b) =>
                  (id, title, description, link, picture,
                  photoContentType, targetFeelings) =>
              b
                  ? prefix5.Post(
                  id,
                  title,
                  description,
                  link,
                  picture,
                  photoContentType,
                  targetFeelings)
                  : null
            },
            -1,
            5,
            const <int>[],
            const <Object>[prefix0.jsonSerializable],
            null),
        r.NonGenericClassMirrorImpl(
            r'CreatePost',
            r'.CreatePost',
            7,
            6,
            const prefix0.JsonSerializable(),
            const <int>[19, 20, 21, 22, 23, 24, 63],
            const <int>[33, 34, 35, 36, 37, 57, 58, 59, 60, 61, 62],
            const <int>[],
            -1,
            {},
            {},
            {
              r'': (b) =>
                  (title, description, link, picture, photoContentType,
                  targetFeelings) =>
              b
                  ? prefix5.CreatePost(title, description, link, picture,
                  photoContentType, targetFeelings)
                  : null
            },
            -1,
            6,
            const <int>[],
            const <Object>[prefix0.jsonSerializable],
            null),
        r.NonGenericClassMirrorImpl(
            r'TargetFeeling',
            r'.TargetFeeling',
            524295,
            7,
            const prefix0.JsonSerializable(),
            const <int>[64],
            const <int>[33, 64, 35, 36, 37, 65],
            const <int>[],
            -1,
            {},
            {},
            {},
            -1,
            7,
            const <int>[],
            const <Object>[
              prefix0.jsonSerializable,
              const prefix0.Json(enumValues: prefix6.TargetFeeling.values)
            ],
            null),
        r.NonGenericClassMirrorImpl(
            r'Emoji',
            r'.Emoji',
            524295,
            8,
            const prefix0.JsonSerializable(),
            const <int>[66],
            const <int>[33, 66, 35, 36, 37, 67],
            const <int>[],
            -1,
            {},
            {},
            {},
            -1,
            8,
            const <int>[],
            const <Object>[
              prefix0.jsonSerializable,
              const prefix0.Json(enumValues: prefix7.Emoji.values)
            ],
            null)
      ],
      <m.DeclarationMirror>[
        r.VariableMirrorImpl(r'id', 33797, 0, const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const []),
        r.VariableMirrorImpl(
            r'name',
            33797,
            0,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const []),
        r.VariableMirrorImpl(
            r'photo',
            33797,
            0,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const []),
        r.VariableMirrorImpl(
            r'photoContentType',
            33797,
            0,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const []),
        r.VariableMirrorImpl(
            r'feelings',
            2130949,
            0,
            const prefix0.JsonSerializable(),
            -1,
            10,
            11,
            const <int>[3],
            const []),
        r.VariableMirrorImpl(r'id', 33797, 1, const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const []),
        r.VariableMirrorImpl(
            r'name',
            33797,
            1,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const []),
        r.VariableMirrorImpl(
            r'photo',
            33797,
            1,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const []),
        r.VariableMirrorImpl(
            r'photoContentType',
            33797,
            1,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const []),
        r.VariableMirrorImpl(r'id', 33797, 2, const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const []),
        r.VariableMirrorImpl(
            r'emoji',
            33797,
            3,
            const prefix0.JsonSerializable(),
            8,
            8,
            8,
            const <int>[],
            const <Object>[
          const prefix0.JsonProperty(
              converter:
                  const prefix8.EnumStringConverter(prefix7.Emoji.values))
        ]),
        r.VariableMirrorImpl(r'id', 33797, 4, const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const []),
        r.VariableMirrorImpl(r'id', 33797, 5, const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const []),
        r.VariableMirrorImpl(
            r'title',
            33797,
            5,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const []),
        r.VariableMirrorImpl(
            r'description',
            33797,
            5,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const []),
        r.VariableMirrorImpl(
            r'link',
            33797,
            5,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const []),
        r.VariableMirrorImpl(
            r'picture',
            33797,
            5,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const []),
        r.VariableMirrorImpl(
            r'photoContentType',
            33797,
            5,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const []),
        r.VariableMirrorImpl(
            r'targetFeelings',
            2130949,
            5,
            const prefix0.JsonSerializable(),
            -1,
            12,
            13,
            const <int>[7],
            const []),
        r.VariableMirrorImpl(
            r'title',
            33797,
            6,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const []),
        r.VariableMirrorImpl(
            r'description',
            33797,
            6,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const []),
        r.VariableMirrorImpl(
            r'link',
            33797,
            6,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const []),
        r.VariableMirrorImpl(
            r'picture',
            33797,
            6,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const []),
        r.VariableMirrorImpl(
            r'photoContentType',
            33797,
            6,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const []),
        r.VariableMirrorImpl(
            r'targetFeelings',
            2130949,
            6,
            const prefix0.JsonSerializable(),
            -1,
            12,
            13,
            const <int>[7],
            const []),
        r.VariableMirrorImpl(
            r'index',
            33861,
            7,
            const prefix0.JsonSerializable(),
            -1,
            14,
            14,
            const <int>[],
            const []),
        r.VariableMirrorImpl(
            r'index',
            33861,
            8,
            const prefix0.JsonSerializable(),
            -1,
            14,
            14,
            const <int>[],
            const []),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 0, 27),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 1, 28),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 2, 29),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 3, 30),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 4, 31),
        r.MethodMirrorImpl(
            r'',
            128,
            0,
            -1,
            0,
            0,
            const <int>[],
            const <int>[0, 1, 2, 3, 4],
            const prefix0.JsonSerializable(),
            const []),
        r.MethodMirrorImpl(
            r'==',
            131074,
            null,
            -1,
            15,
            15,
            const <int>[],
            const <int>[5], const prefix0.JsonSerializable(), const []),
        r.MethodMirrorImpl(
            r'toString',
            131074,
            null,
            -1,
            9,
            9,
            const <int>[],
            const <int>[], const prefix0.JsonSerializable(), const []),
        r.MethodMirrorImpl(
            r'noSuchMethod',
            65538,
            null,
            null,
            null,
            null,
            const <int>[],
            const <int>[6],
            const prefix0.JsonSerializable(),
            const []),
        r.MethodMirrorImpl(
            r'hashCode',
            131075,
            null,
            -1,
            14,
            14,
            const <int>[],
            const <int>[], const prefix0.JsonSerializable(), const []),
        r.MethodMirrorImpl(
            r'runtimeType',
            131075,
            null,
            -1,
            16,
            16,
            const <int>[],
            const <int>[],
            const prefix0.JsonSerializable(),
            const []),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 5, 38),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 6, 39),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 7, 40),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 8, 41),
        r.MethodMirrorImpl(
            r'',
            128,
            1,
            -1,
            1,
            1,
            const <int>[],
            const <int>[7, 8, 9, 10],
            const prefix0.JsonSerializable(),
            const []),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 9, 43),
        r.MethodMirrorImpl(r'', 128, 2, -1, 2, 2, const <int>[],
            const <int>[11], const prefix0.JsonSerializable(), const []),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 10, 45),
        r.MethodMirrorImpl(r'', 128, 3, -1, 3, 3, const <int>[],
            const <int>[12], const prefix0.JsonSerializable(), const []),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 11, 47),
        r.MethodMirrorImpl(r'', 128, 4, -1, 4, 4, const <int>[],
            const <int>[13], const prefix0.JsonSerializable(), const []),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 12, 49),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 13, 50),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 14, 51),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 15, 52),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 16, 53),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 17, 54),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 18, 55),
        r.MethodMirrorImpl(
            r'',
            128,
            5,
            -1,
            5,
            5,
            const <int>[],
            const <int>[14, 15, 16, 17, 18, 19, 20],
            const prefix0.JsonSerializable(),
            const []),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 19, 57),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 20, 58),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 21, 59),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 22, 60),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 23, 61),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 24, 62),
        r.MethodMirrorImpl(
            r'',
            128,
            6,
            -1,
            6,
            6,
            const <int>[],
            const <int>[21, 22, 23, 24, 25, 26],
            const prefix0.JsonSerializable(),
            const []),
        r.MethodMirrorImpl(
            r'toString',
            131138,
            7,
            -1,
            9,
            9,
            const <int>[],
            const <int>[], const prefix0.JsonSerializable(), const []),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 25, 65),
        r.MethodMirrorImpl(
            r'toString',
            131138,
            8,
            -1,
            9,
            9,
            const <int>[],
            const <int>[], const prefix0.JsonSerializable(), const []),
        r.ImplicitGetterMirrorImpl(const prefix0.JsonSerializable(), 26, 67)
      ],
      <m.ParameterMirror>[
        r.ParameterMirrorImpl(
            r'id',
            32774,
            32,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'name',
            32774,
            32,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'photo',
            32774,
            32,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'photoContentType',
            32774,
            32,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'feelings',
            2129926,
            32,
            const prefix0.JsonSerializable(),
            -1,
            10,
            11,
            const <int>[3],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'other',
            16390,
            33,
            const prefix0.JsonSerializable(),
            null,
            null,
            null,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'invocation',
            32774,
            35,
            const prefix0.JsonSerializable(),
            -1,
            17,
            17,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'id',
            32774,
            42,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'name',
            32774,
            42,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'photo',
            32774,
            42,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'photoContentType',
            32774,
            42,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'id',
            32774,
            44,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'emoji',
            32774,
            46,
            const prefix0.JsonSerializable(),
            8,
            8,
            8,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'id',
            32774,
            48,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'id',
            32774,
            56,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'title',
            32774,
            56,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'description',
            32774,
            56,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'link',
            32774,
            56,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'picture',
            32774,
            56,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'photoContentType',
            32774,
            56,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'targetFeelings',
            2129926,
            56,
            const prefix0.JsonSerializable(),
            -1,
            12,
            13,
            const <int>[7],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'title',
            32774,
            63,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'description',
            32774,
            63,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'link',
            32774,
            63,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'picture',
            32774,
            63,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'photoContentType',
            32774,
            63,
            const prefix0.JsonSerializable(),
            -1,
            9,
            9,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'targetFeelings',
            2129926,
            63,
            const prefix0.JsonSerializable(),
            -1,
            12,
            13,
            const <int>[7],
            const [],
            null,
            null)
      ],
      <Type>[
        prefix1.User,
        prefix1.CreateUser,
        prefix2.Reaction,
        prefix3.Feeling,
        prefix4.Reply,
        prefix5.Post,
        prefix5.CreatePost,
        prefix6.TargetFeeling,
        prefix7.Emoji,
        String,
        const m.TypeValue<List<prefix3.Feeling>>().type,
        List,
        const m.TypeValue<Set<prefix6.TargetFeeling>>().type,
        Set,
        int,
        bool,
        Type,
        Invocation
      ],
      9,
      {
        r'==': (dynamic instance) => (x) => instance == x,
        r'toString': (dynamic instance) => instance.toString,
        r'noSuchMethod': (dynamic instance) => instance.noSuchMethod,
        r'hashCode': (dynamic instance) => instance.hashCode,
        r'runtimeType': (dynamic instance) => instance.runtimeType,
        r'id': (dynamic instance) => instance.id,
        r'name': (dynamic instance) => instance.name,
        r'photo': (dynamic instance) => instance.photo,
        r'photoContentType': (dynamic instance) => instance.photoContentType,
        r'feelings': (dynamic instance) => instance.feelings,
        r'emoji': (dynamic instance) => instance.emoji,
        r'title': (dynamic instance) => instance.title,
        r'description': (dynamic instance) => instance.description,
        r'link': (dynamic instance) => instance.link,
        r'picture': (dynamic instance) => instance.picture,
        r'targetFeelings': (dynamic instance) => instance.targetFeelings,
        r'index': (dynamic instance) => instance.index
      },
      {},
      null,
      [])
};

final _memberSymbolMap = null;

void initializeReflectable() {
  r.data = _data;
  r.memberSymbolMap = _memberSymbolMap;
}
