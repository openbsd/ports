$OpenBSD: patch-nfclient.c,v 1.3 2004/01/14 17:18:12 naddy Exp $

Make the method prototypes match the new superclass

--- abuse/src/nfclient.c.orig	1996-04-12 02:12:52.000000000 +0200
+++ abuse/src/nfclient.c	2004-01-14 18:14:33.000000000 +0100
@@ -32,7 +32,7 @@ class nfs_file : public bFILE 
   virtual int open_failure();
   virtual int unbuffered_read(void *buf, size_t count);       // returns number of bytes read
   int new_read(void *buf, size_t count);       // returns number of bytes read
-  virtual int unbuffered_write(void *buf, size_t count);      // returns number of bytes written
+  virtual int unbuffered_write(const void *buf, size_t count);      // returns number of bytes written
   virtual int unbuffered_seek(long offset, int whence);  // whence=SEEK_SET, SEEK_CUR, SEEK_END, ret=0=success
   virtual int unbuffered_tell();
   virtual int file_size();
@@ -143,7 +143,7 @@ int nfs_file::unbuffered_read(void *buf,
   else return 0;
 }
 
-int nfs_file::unbuffered_write(void *buf, size_t count)      // returns number of bytes written
+int nfs_file::unbuffered_write(const void *buf, size_t count)      // returns number of bytes written
 {
   if (local)
     return local->write(buf,count);
