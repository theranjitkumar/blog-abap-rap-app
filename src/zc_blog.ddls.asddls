@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Blog cds projection view'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

@UI.headerInfo: {
    typeName: 'Blog',
    typeNamePlural: 'Blogs',
    title: {
        type: #STANDARD,
        value: 'Title'
    }
}

define root view entity ZC_BLOG
  as projection on ZI_BLOG
{
  key BlogId,
      Title,
      Content,
      Author,
      Status,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      /* Associations */
      _Comments
}
