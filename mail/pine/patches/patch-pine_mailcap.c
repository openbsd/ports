$OpenBSD: patch-pine_mailcap.c,v 1.3 2001/09/27 16:52:40 brad Exp $
--- pine/mailcap.c.orig	Thu Jun 21 13:53:31 2001
+++ pine/mailcap.c	Thu Sep 27 08:51:49 2001
@@ -917,14 +917,18 @@ mc_cmd_bldr(controlstring, type, subtype
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
