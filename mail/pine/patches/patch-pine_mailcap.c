--- pine/mailcap.c.orig	Fri Oct 22 19:36:41 1999
+++ pine/mailcap.c	Fri Oct 22 19:42:53 1999
@@ -915,14 +915,18 @@
 		     * have to put those outside of the single quotes.
 		     * (The parm+1000 nonsense is to protect against
 		     * malicious mail trying to overlow our buffer.)
+		     *
+		     * TCH - Change 2/8/1999
+		     * Also quote the ` slash to prevent execution of arbirtrary code
 		     */
 		    for(p = parm; *p && p < parm+1000; p++){
-			if(*p == '\''){
+			if((*p == '\'')||(*p=='`')){
 			    *to++ = '\'';  /* closing quote */
 			    *to++ = '\\';
-			    *to++ = '\'';  /* below will be opening quote */
-			}
-			*to++ = *p;
+			    *to++ = *p;  /* quoted character */
+			    *to++ = '\'';  /* opening quote */
+			} else
+			    *to++ = *p;
 		    }
 
 		    fs_give((void **) &parm);
