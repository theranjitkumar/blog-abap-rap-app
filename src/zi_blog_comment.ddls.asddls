@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Blog comment interface view'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_BLOG_COMMENT
  as select from zblog_commenttbl
  //composition of target_data_source_name as _association_name
{
  key comment_id      as CommentId,
      blog_id         as BlogId,
      comment_text    as CommentText,
      commenter       as Commenter,
      created_by      as CreatedBy,
      created_at      as CreatedAt,
      last_changed_by as LastChangedBy,
      last_changed_at as LastChangedAt
      // _association_name // Make association public
}
