$OpenBSD: patch-drivers_freetds_dbd_freetds.c,v 1.1.1.1 2009/06/02 00:58:58 merdely Exp $

From FreeBSD.
--- drivers/freetds/dbd_freetds.c.orig	Mon Dec 31 17:10:44 2007
+++ drivers/freetds/dbd_freetds.c	Sun May 31 16:36:09 2009
@@ -454,6 +454,7 @@ dbi_result_t *dbd_list_tables(dbi_conn_t * conn, const
 {
     dbi_result_t *res;
     char *sql_cmd;
+    char *current_db = NULL;
 
     if (db == NULL || db[0] == '\0') {
 	/* Use current database */
@@ -461,7 +462,6 @@ dbi_result_t *dbd_list_tables(dbi_conn_t * conn, const
 	return res;
     }
 
-    char *current_db = NULL;
     if (conn->current_db)
 	/* Reserved current DB name */
 	current_db = strdup(conn->current_db);
@@ -509,9 +509,9 @@ size_t dbd_quote_string(dbi_driver_t * driver, const c
 {
     /* foo's -> 'foo''s' */
     size_t len;
+    const char *escaped = "\'";
 
     strcpy(dest, "\'");
-    const char *escaped = "\'";
 
     len = _dbd_freetds_escape_chars(dest + 1, orig, strlen(orig), escaped);
 
@@ -560,6 +560,8 @@ dbi_result_t *dbd_query(dbi_conn_t * conn, const char 
      * everything else will be filled in by DBI */
 
     unsigned int idx = 0;
+    unsigned short type = 0;
+    unsigned int attribs = 0;
     dbi_result_t *result = NULL;
     dbi_row_t *row = NULL;
     FREETDSCON *tdscon = (FREETDSCON *) conn->connection;
@@ -629,9 +631,6 @@ dbi_result_t *dbd_query(dbi_conn_t * conn, const char 
 		    return NULL;
 		}
 
-		unsigned short type = 0;
-		unsigned int attribs = 0;
-
 		_translate_freetds_type(datafmt[idx], &type, &attribs);
 		/* Fill fields value in result */
 		_dbd_result_add_field(result, idx, datafmt[idx]->name, type, attribs);
@@ -885,6 +884,7 @@ dbi_row_t *_dbd_freetds_buffers_binding(dbi_conn_t * c
     dbi_row_t *row = NULL;
     unsigned int idx = 0;
     void *addr = NULL;
+    char **orig;
 
     FREETDSCON *tdscon = (FREETDSCON *) conn->connection;
 
@@ -912,8 +912,7 @@ dbi_row_t *_dbd_freetds_buffers_binding(dbi_conn_t * c
 		    dstfmt.format = CS_FMT_UNUSED;
 
 		    addr = malloc(sizeof(CS_NUMERIC_TYPE));
-		    char **orig =
-			&(result->rows[result->numrows_matched]->field_values[idx].d_string);
+		    orig = &(result->rows[result->numrows_matched]->field_values[idx].d_string);
 
 		    if (cs_convert(tdscon->ctx, datafmt[idx], *orig, &dstfmt, addr, NULL) !=
 			CS_SUCCEED) {
