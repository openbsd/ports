Make the method prototypes match the new superclass

--- abuse/src/nfclient.c.orig	Fri Oct 29 00:26:21 1999
+++ abuse/src/nfclient.c	Fri Oct 29 00:27:59 1999
@@ -32,7 +32,7 @@
   virtual int open_failure();
   virtual int unbuffered_read(void *buf, size_t count);       // returns number of bytes read
   int new_read(void *buf, size_t count);       // returns number of bytes read
-  virtual int unbuffered_write(void *buf, size_t count);      // returns number of bytes written
+  virtual int unbuffered_write(const void *buf, size_t count);      // returns number of bytes written
   virtual int unbuffered_seek(long offset, int whence);  // whence=SEEK_SET, SEEK_CUR, SEEK_END, ret=0=success
   virtual int unbuffered_tell();
   virtual int file_size();
@@ -143,7 +143,7 @@
   else return 0;
 }
 
-int nfs_file::unbuffered_write(void *buf, size_t count)      // returns number of bytes written
+int nfs_file::unbuffered_write(const void *buf, size_t count)      // returns number of bytes written
 {
   if (local)
     return local->write(buf,count);
