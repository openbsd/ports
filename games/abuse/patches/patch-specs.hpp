$OpenBSD: patch-specs.hpp,v 1.3 2004/01/14 17:18:12 naddy Exp $

Need const here...

--- imlib/include/specs.hpp.orig	1996-04-15 21:25:42.000000000 +0200
+++ imlib/include/specs.hpp	2004-01-14 18:14:33.000000000 +0100
@@ -76,7 +76,7 @@ class bFILE     // base file type which 
   int flush_writes();                             // returns 0 on failure, else # of bytes written
 
   virtual int unbuffered_read(void *buf, size_t count)  = 0;
-  virtual int unbuffered_write(void *buf, size_t count) = 0;
+  virtual int unbuffered_write(const void *buf, size_t count) = 0;
   virtual int unbuffered_tell()                         = 0;
   virtual int unbuffered_seek(long offset, int whence)  = 0;   // whence=SEEK_SET, SEEK_CUR,
                                                                // SEEK_END, ret=0=success
@@ -85,9 +85,9 @@ class bFILE     // base file type which 
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
 
@@ -126,7 +126,7 @@ public :
   jFILE(FILE *file_pointer);                      // assumes fp is at begining of file
   virtual int open_failure() { return fd<0; }
   virtual int unbuffered_read(void *buf, size_t count);       // returns number of bytes read
-  virtual int unbuffered_write(void *buf, size_t count);     // returns number of bytes written
+  virtual int unbuffered_write(const void *buf, size_t count);// returns number of bytes written
   virtual int unbuffered_seek(long offset, int whence);      // whence=SEEK_SET, SEEK_CUR, 
                                                              // SEEK_END, ret=0=success
   virtual int unbuffered_tell();
