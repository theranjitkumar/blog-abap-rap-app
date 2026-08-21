CLASS zcl_blog_test_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

ENDCLASS.


CLASS zcl_blog_test_data IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA:
      lt_blog    TYPE TABLE OF zblog_tbl,
      lt_comment TYPE TABLE OF zblog_commenttbl.

    "------------------------------------------------------------
    " Blog data
    "------------------------------------------------------------
    lt_blog = VALUE #(

      (
        client          = sy-mandt
        blog_id         = '0000000001'
        title           = 'Introduction to SAP RAP'
        content         = 'Learn SAP RAP step by step.'
        author          = 'Ranjit'
        status          = 'PUBLISHED'
        created_by      = sy-uname
        "created_at      = utclong_current( )
        last_changed_by = sy-uname
        "last_changed_at = utclong_current( )
      )

      (
        client          = sy-mandt
        blog_id         = '0000000002'
        title           = 'Understanding CDS Views'
        content         = 'Learn CDS Views and associations in SAP.'
        author          = 'Ranjit'
        status          = 'PUBLISHED'
        created_by      = sy-uname
        "created_at      = utclong_current( )
        last_changed_by = sy-uname
        "last_changed_at = utclong_current( )
      )

      (
        client          = sy-mandt
        blog_id         = '0000000003'
        title           = 'RAP Behavior Definition'
        content         = 'Understanding managed RAP behavior.'
        author          = 'Amit'
        status          = 'DRAFT'
        created_by      = sy-uname
        "created_at      = utclong_current( )
        last_changed_by = sy-uname
        "last_changed_at = utclong_current( )
      )

    ).

    "------------------------------------------------------------
    " Comment data
    "------------------------------------------------------------
    lt_comment = VALUE #(

      (
        client          = sy-mandt
        comment_id      = '0000000001'
        blog_id         = '0000000001'
        comment_text    = 'Very useful RAP introduction.'
        commenter       = 'Rahul'
        created_by      = sy-uname
        "created_at      = utclong_current( )
        last_changed_by = sy-uname
        "last_changed_at = utclong_current( )
      )

      (
        client          = sy-mandt
        comment_id      = '0000000002'
        blog_id         = '0000000001'
        comment_text    = 'Waiting for the next tutorial.'
        commenter       = 'Priya'
        created_by      = sy-uname
        "created_at      = utclong_current( )
        last_changed_by = sy-uname
        "last_changed_at = utclong_current( )
      )

      (
        client          = sy-mandt
        comment_id      = '0000000003'
        blog_id         = '0000000002'
        comment_text    = 'CDS association explanation was helpful.'
        commenter       = 'Amit'
        created_by      = sy-uname
        "created_at      = utclong_current( )
        last_changed_by = sy-uname
        "last_changed_at = utclong_current( )
      )

    ).

    "------------------------------------------------------------
    " Insert Blog data
    "------------------------------------------------------------
    INSERT zblog_tbl FROM TABLE @lt_blog.

    IF sy-subrc = 0.
      out->write( 'Blog data inserted successfully.' ).
    ELSE.
      out->write( 'Error inserting blog data.' ).
    ENDIF.

    "------------------------------------------------------------
    " Insert Comment data
    "------------------------------------------------------------
    INSERT zblog_commenttbl FROM TABLE @lt_comment.

    IF sy-subrc = 0.
      out->write( 'Comment data inserted successfully.' ).
    ELSE.
      out->write( 'Error inserting comment data.' ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.
