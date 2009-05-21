--- libs/wine/mmap.c.orig	Fri May  8 19:33:02 2009
+++ libs/wine/mmap.c	Wed May 20 21:23:39 2009
@@ -191,6 +191,10 @@ static int try_mmap_fixed (void *addr, size_t len, int
  */
 void *wine_anon_mmap( void *start, size_t size, int prot, int flags )
 {
+#ifdef __OpenBSD__
+    void *result;
+#endif
+
 #ifdef MAP_SHARED
     flags &= ~MAP_SHARED;
 #endif
@@ -198,6 +202,7 @@ void *wine_anon_mmap( void *start, size_t size, int pr
     /* Linux EINVAL's on us if we don't pass MAP_PRIVATE to an anon mmap */
     flags |= MAP_PRIVATE | MAP_ANON;
 
+#ifndef __OpenBSD__  /* Default OpenBSD mmap behaviour, no tricks needed. */
     if (!(flags & MAP_FIXED))
     {
 #if defined(__FreeBSD__) || defined(__FreeBSD_kernel__)
@@ -213,7 +218,30 @@ void *wine_anon_mmap( void *start, size_t size, int pr
             return start;
 #endif
     }
-    return mmap( start, size, prot, flags, get_fdzero(), 0 );
+#endif /* __OpenBSD__ */
+
+#ifdef __OpenBSD__
+    /*
+     * MAP_TRYFIXED takes the specified address or, failing that, the next free
+     * address.
+     */
+    if (!(flags & MAP_FIXED)) {
+        if (start == NULL)
+            start = 0x110000;
+        flags |= MAP_TRYFIXED;
+    }
+#endif /* __OpenBSD__ */
+
+    /* flags & MAP_FIXED case. */
+    result = mmap( start, size, prot, flags, get_fdzero(), 0 );
+    if (result == MAP_FAILED)
+        return MAP_FAILED;
+    if ((char*)result + size >= (void*)0x7ffe0000 &&
+      (char*)start + size < (void*)0x7ffe0000) {
+        munmap(start, size);
+	return MAP_FAILED;
+    }
+    return result;
 }
 
 
@@ -343,7 +371,7 @@ void mmap_init(void)
 {
     struct reserved_area *area;
     struct list *ptr;
-#ifdef __i386__
+#if defined(__i386__) && !defined(__OpenBSD__)
     char stack;
     char * const stack_ptr = &stack;
     char *user_space_limit = (char *)0x7ffe0000;
