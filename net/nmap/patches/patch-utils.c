--- utils.c.orig	Thu Oct  5 01:46:19 2000
+++ utils.c	Sat Nov 18 00:55:54 2000
@@ -184,6 +184,23 @@
 return s;
 }
 
+#ifdef __OpenBSD__
+int get_random_bytes(void *buf, int numbytes)
+{
+	u_int32_t i;
+	
+	while (numbytes > 4) {
+		*(u_int32_t *)buf = arc4random();
+		buf += 4;
+		numbytes -= 4;
+	}
+	if (numbytes > 0) {
+		i = arc4random();
+		memcpy(buf, &i, numbytes);
+	}
+	return 0;
+}
+#else
 int get_random_bytes(void *buf, int numbytes) {
 static char bytebuf[2048];
 static char badrandomwarning = 0;
@@ -239,6 +256,7 @@
 bytesleft = 0;
 return get_random_bytes((char *)buf + tmp, numbytes - tmp);
 }
+#endif /* OpenBSD */
 
 /* Scramble the contents of an array*/
 void genfry(unsigned char *arr, int elem_sz, int num_elem) {
