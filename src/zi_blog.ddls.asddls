@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Blog cds interface'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_BLOG
  as select from zblog_tbl
  //composition of target_data_source_name as //_association_name
{
  key blog_id         as BlogId,
      title           as Title,
      content         as Content,
      author          as Author,
      status          as Status,
      created_by      as CreatedBy,
      created_at      as CreatedAt,
      last_changed_by as LastChangedBy,
      last_changed_at as LastChangedAt

      //_association_name // Make association public
}
