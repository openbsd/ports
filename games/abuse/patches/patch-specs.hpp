$OpenBSD: patch-specs.hpp,v 1.1 1999/11/01 22:06:48 rohee Exp $

Need const here...

--- imlib/include/specs.hpp.orig	Mon Apr 15 21:25:42 1996
+++ imlib/include/specs.hpp	Thu Oct 28 23:47:46 1999
@@ -76,7 +76,7 @@
   int flush_writes();                             // returns 0 on failure, else # of bytes written
 
   virtual int unbuffered_read(void *buf, size_t count)  = 0;
-  virtual int unbuffered_write(void *buf, size_t count) = 0;
+  virtual int unbuffered_write(const void *buf, size_t count) = 0;
   virtual int unbuffered_tell()                         = 0;
   virtual int unbuffered_seek(long offset, int whence)  = 0;   // whence=SEEK_SET, SEEK_CUR,
                                                                // SEEK_END, ret=0=success
@@ -85,9 +85,9 @@
   public :
   bFILE();
   virtual int open_failure() = 0;
-  int read(void *buf, size_t count);       // returns number of bytes read, calls unbuffer_read
-  int write(void *buf, size_t count);      // returns number of bytes written
-  int seek(long offset, int whence);       // whence=SEEK_SET, SEEK_CUR, SEEK_END, ret=0=success
+  int read(void *buf, size_t count);        // returns number of bytes read, calls unbuffer_read
+  int write(const void *buf, size_t count); // returns number of bytes written
+  int seek(long offset, int whence);        // whence=SEEK_SET, SEEK_CUR, SEEK_END, ret=0=success
   int tell();
   virtual int file_size() = 0;
 
@@ -126,7 +126,7 @@
   jFILE(FILE *file_pointer);                      // assumes fp is at begining of file
   virtual int open_failure() { return fd<0; }
   virtual int unbuffered_read(void *buf, size_t count);       // returns number of bytes read
-  virtual int unbuffered_write(void *buf, size_t count);     // returns number of bytes written
+  virtual int unbuffered_write(const void *buf, size_t count);// returns number of bytes written
   virtual int unbuffered_seek(long offset, int whence);      // whence=SEEK_SET, SEEK_CUR, 
                                                              // SEEK_END, ret=0=success
   virtual int unbuffered_tell();
