Need const because of stricter type checking with g++-2.95.x...

--- imlib/specs.c.orig	Tue Jul  8 12:00:50 1997
+++ imlib/specs.c	Thu Oct 28 23:52:45 1999
@@ -180,7 +180,7 @@
 }
 
 
-int bFILE::write(void *buf, size_t count)      // returns number of bytes written
+int bFILE::write(const void *buf, size_t count) // returns number of bytes written
 { 
   if (allow_write_buffering())
   {
@@ -359,7 +359,7 @@
   public :
   virtual int open_failure() { return 1; }
   virtual int unbuffered_read(void *buf, size_t count)   { return 0; }
-  virtual int unbuffered_write(void *buf, size_t count)  { return 0; }
+  virtual int unbuffered_write(const void *buf, size_t count)  { return 0; }
   virtual int unbuffered_seek(long offset, int whence)   { return 0; }
 
   virtual int unbuffered_tell() { return 0; }
@@ -523,7 +523,7 @@
 	return len;
 }
 
-int jFILE::unbuffered_write(void *buf, size_t count)
+int jFILE::unbuffered_write(const void *buf, size_t count)
 {
   long ret = ::write(fd,(char*)buf,count);
 	current_offset += ret;
