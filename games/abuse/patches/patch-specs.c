$OpenBSD: patch-specs.c,v 1.3 2004/01/14 17:18:12 naddy Exp $

Need const because of stricter type checking with g++-2.95.x...

--- imlib/specs.c.orig	1997-07-08 12:00:50.000000000 +0200
+++ imlib/specs.c	2004-01-14 18:14:33.000000000 +0100
@@ -180,7 +180,7 @@ int bFILE::read(void *buf, size_t count)
 }
 
 
-int bFILE::write(void *buf, size_t count)      // returns number of bytes written
+int bFILE::write(const void *buf, size_t count) // returns number of bytes written
 { 
   if (allow_write_buffering())
   {
@@ -359,7 +359,7 @@ class null_file : public bFILE     // th
   public :
   virtual int open_failure() { return 1; }
   virtual int unbuffered_read(void *buf, size_t count)   { return 0; }
-  virtual int unbuffered_write(void *buf, size_t count)  { return 0; }
+  virtual int unbuffered_write(const void *buf, size_t count)  { return 0; }
   virtual int unbuffered_seek(long offset, int whence)   { return 0; }
 
   virtual int unbuffered_tell() { return 0; }
@@ -523,7 +523,7 @@ int jFILE::unbuffered_read(void *buf, si
 	return len;
 }
 
-int jFILE::unbuffered_write(void *buf, size_t count)
+int jFILE::unbuffered_write(const void *buf, size_t count)
 {
   long ret = ::write(fd,(char*)buf,count);
 	current_offset += ret;
