--- pine/mailcap.c.orig	Mon Nov 13 15:40:22 2000
+++ pine/mailcap.c	Sun Dec 10 12:59:16 2000
@@ -918,14 +918,18 @@
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
