--- dlls/ntdll/virtual.c.orig	Thu May 21 00:23:36 2009
+++ dlls/ntdll/virtual.c	Thu May 21 00:22:03 2009
@@ -830,7 +830,7 @@ static NTSTATUS map_file_into_view( struct file_view *
     {
         int flags = MAP_FIXED | (shared_write ? MAP_SHARED : MAP_PRIVATE);
 
-        if (mmap( (char *)view->base + start, size, prot, flags, fd, offset ) != (void *)-1)
+        if (mmap( (char *)view->base + start, ROUND_ADDR(size + page_mask, page_mask), prot, flags, fd, offset ) != (void *)-1)
             goto done;
 
         /* mmap() failed; if this is because the file offset is not    */
