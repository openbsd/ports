--- lib/Xm/TextF.c.orig	Wed May  3 05:12:42 2000
+++ lib/Xm/TextF.c	Wed Aug  9 19:29:43 2000
@@ -1211,6 +1211,71 @@
   TextFieldPreferredValue,
 };
 
+#if defined(__FreeBSD__) || defined(__OpenBSD__) || defined (__NetBSD__)
+/*-
+ * *BSD does not have wc*() functions yet.
+ * Eventually, this patch should go away in favor of system implementaion
+ * of wide character support.
+ * This is a quick hack based on the description of the following functions:
+ *  wcslen(), wcscpy(), wcschr(), wcsncat(), wcscat()
+ * In fact, these are copied off from src/lib/libc/string with appropriate
+ * modification.
+ */
+static size_t
+wcslen(const wchar_t *s)
+{
+    register wchar_t *str;
+
+    for(str = s; *str; str++);
+    return(str-s);
+}
+static wchar_t *
+wcscpy(wchar_t *s1, const wchar_t *s2)
+{
+    wchar_t *s = s1;
+
+    for (; *s1 = *s2; s1++, s2++)
+    return(s);
+}
+static wchar_t *
+wcschr(const wchar_t *s, wchar_t c)
+{
+    for(;; s++) {
+	if (*s == c)
+	    return((wchar_t *)s);
+	if (!*s)
+	    return((wchar_t *)NULL);
+    }
+}
+static wchar_t *
+wcscat(wchar_t *s1, const wchar_t *s2)
+{
+    wchar_t *s = s1;
+
+    for (; *s1; s1++);
+    while (*s1++ = *s2++);
+    return(s);
+}
+static wchar_t *
+wcsncat(wchar_t *s1, const wchar_t *s2, size_t n)
+{
+    if (n != 0) {
+	register wchar_t *d = s1;
+	register wchar_t *s = s2;
+	while (*d)
+	    d++;
+	do {
+	    if ((*d = *s++) == 0)
+		break;
+	    d++;
+	} while (--n != 0);
+	*d = 0;
+    }
+
+    return(s1);
+}
+#endif /*defined(__FreeBSD__) || defined(__OpenBSD__) || defined (__NetBSD__)*/
+
 static void 
 ClassInitialize(void)
 {
