--- kadmin/random_password.c	1999/12/02 17:04:58	1.3
+++ kadmin/random_password.c	2001/02/15 04:20:53	1.4
@@ -33,7 +33,7 @@
 
 #include "kadmin_locl.h"
 
-RCSID("$Id: patch-random_password.c,v 1.1 2001/02/28 16:26:46 jakob Exp $");
+RCSID("$Id: patch-random_password.c,v 1.1 2001/02/28 16:26:46 jakob Exp $");
 
 /* This file defines some a function that generates a random password,
    that can be used when creating a large amount of principals (such
@@ -57,9 +57,9 @@
 {
 #ifdef OTP_STYLE
     {
-	des_cblock newkey;
+	OtpKey newkey;
 
-	des_new_random_key(&newkey);
+	krb5_generate_random_block(&newkey, sizeof(newkey));
 	otp_print_stddict (newkey, pw, len);
 	strlwr(pw);
     }
@@ -80,11 +80,11 @@
 #ifndef OTP_STYLE
 /* return a random value in range 0-127 */
 static int
-RND(des_cblock *key, int *left)
+RND(unsigned char *key, int keylen, int *left)
 {
     if(*left == 0){
-	des_new_random_key(key);
-	*left = 8;
+	krb5_generate_random_block(key, keylen);
+	*left = keylen;
     }
     (*left)--;
     return ((unsigned char*)key)[*left];
@@ -120,7 +120,7 @@
     } *classes;
     va_list ap;
     int len, i;
-    des_cblock rbuf; /* random buffer */
+    unsigned char rbuf[8]; /* random buffer */
     int rleft = 0;
 
     classes = malloc(num_classes * sizeof(*classes));
@@ -138,11 +138,12 @@
 	return;
     for(i = 0; i < len; i++) {
 	int j;
-	int x = RND(&rbuf, &rleft) % (len - i);
+	int x = RND(rbuf, sizeof(rbuf), &rleft) % (len - i);
 	int t = 0;
 	for(j = 0; j < num_classes; j++) {
 	    if(x < t + classes[j].freq) {
-		(*pw)[i] = classes[j].str[RND(&rbuf, &rleft) % classes[j].len];
+		(*pw)[i] = classes[j].str[RND(rbuf, sizeof(rbuf), &rleft)
+					 % classes[j].len];
 		classes[j].freq--;
 		break;
 	    }
