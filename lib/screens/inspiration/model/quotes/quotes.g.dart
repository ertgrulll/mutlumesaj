// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quotes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuotesImpl _$$QuotesImplFromJson(Map<String, dynamic> json) => _$QuotesImpl(
      count: json['count'] as int?,
      totalCount: json['totalCount'] as int?,
      page: json['page'] as int?,
      totalPages: json['totalPages'] as int?,
      lastItemIndex: json['lastItemIndex'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuotesImplToJson(_$QuotesImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'totalCount': instance.totalCount,
      'page': instance.page,
      'totalPages': instance.totalPages,
      'lastItemIndex': instance.lastItemIndex,
      'results': instance.results,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      id: json['id'] as String?,
      author: json['author'] as String?,
      content: json['content'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      authorSlug: json['authorSlug'] as String?,
      length: json['length'] as int?,
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'content': instance.content,
      'tags': instance.tags,
      'authorSlug': instance.authorSlug,
      'length': instance.length,
    };
