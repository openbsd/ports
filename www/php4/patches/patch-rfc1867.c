--- main/rfc1867.c:1.38	Sat Aug  5 23:40:28 2000
+++ main/rfc1867.c	Sun Sep  3 22:09:46 2000
@@ -64,7 +64,7 @@
 	int eolsize;
 	long bytes, max_file_size = 0;
 	char *namebuf=NULL, *filenamebuf=NULL, *lbuf=NULL, 
-		 *abuf=NULL, *start_arr=NULL, *end_arr=NULL, *arr_index=NULL;
+		 *abuf=NULL, *start_arr=NULL, *end_arr=NULL, *arr_index=NULL, *sbuf=NULL;
 	FILE *fp;
 	int itype, is_arr_upload=0, arr_len=0;
 	zval *http_post_files=NULL;
@@ -172,8 +172,10 @@
 						}
 						abuf = estrndup(namebuf, strlen(namebuf)-arr_len);
 						sprintf(lbuf, "%s_name[%s]", abuf, arr_index);
+						sbuf = estrdup(abuf);
 					} else {
 						sprintf(lbuf, "%s_name", namebuf);
+						sbuf = estrdup(abuf);
 					}
 					s = strrchr(filenamebuf, '\\');
 					if (s &amp;&amp; s &gt; filenamebuf) {
@@ -252,7 +254,11 @@
 				}
 				*(loc - 4) = '\0';
 
-				php_register_variable(namebuf, ptr, array_ptr ELS_CC PLS_CC);
+				/* Check to make sure we are not overwriting special file
+				 * upload variables */
+				if(memcmp(namebuf,sbuf,strlen(sbuf))) {
+					php_register_variable(namebuf, ptr, array_ptr ELS_CC PLS_CC);
+				}
 
 				/* And a little kludge to pick out special MAX_FILE_SIZE */
 				itype = php_check_ident_type(namebuf);
@@ -353,6 +359,7 @@
 				break;
 		}
 	}
+	if(sbuf) efree(sbuf);
 	SAFE_RETURN;
 }
