From ftp://ftp.gnupg.org/pub/gcrypt/gnupg/gnupg-1.0.4.security-patch1.diff

Hi!

It has been pointed out that there is another bug in the signature
verification code of GnuPG.

         * This can easily lead to false positives *

All versions of GnuPG released before today are vulnerable!

To check a detached singature you normally do this:

  gpg --verify foo.sig foo.txt

The problem here is that someone may replace foo.sig with a standard
signature containing some arbitrary signed text and its signature,
and then modify foo.txt - GnuPG does not detect this - Ooops.

The solution for this problem ist not easy and needs a change in the
semantics of the --verify command: It will not any longer be
possible to do this:

  gpg --verify foo.sig <foo.txt

Instead you have to use this

  gpg --verify foo.sig - <foo.txt

The difference here is that gpg sees 2 files on the command lines
and thereby knows that it should check a detached signature.  We
really need this information and there is no way to avoid that
change, sorry.  You should make sure that you never use the first
form, because this will lead to false positives when foo.sig is not
a detached signature - gnupg does detect the other case and warns
you, but this is not sufficient.  If you use GnuPG from other
applications, please change it.

What to do:

  1. Apply the attached patch to GnuPG 1.0.4

  2. Check all programs which are designed to verify detached
     signatures, that they don't use the vulnerable way of passing
     data to GnuPG.

Currently we are reviewing some other minor bug fixes and
it might take some time to release a fixed version.

I apologize for this bug and have to thank Rene Puls for finding it.


  Werner


p.s.
I'd really appreciate if some volunteers can write more regression
tests; especially those for bugs of this kind.
Apply the patch using "patch -p1" while in the top directory of the
GnuPG source.  The patch is against the 1.0.4 release.


--- g10/plaintext.c.orig	Wed Jul 26 11:21:58 2000
+++ g10/plaintext.c	Sat Dec 23 14:51:54 2000
@@ -370,7 +370,7 @@ hash_datafiles( MD_HANDLE md, MD_HANDLE 
 		const char *sigfilename, int textmode )
 {
     IOBUF fp;
-    STRLIST sl=NULL;
+    STRLIST sl;
 
     if( !files ) {
 	/* check whether we can open the signed material */
@@ -380,27 +380,21 @@ hash_datafiles( MD_HANDLE md, MD_HANDLE 
 	    iobuf_close(fp);
 	    return 0;
 	}
-	/* no we can't (no sigfile) - read signed stuff from stdin */
-	add_to_strlist( &sl, "-");
+	log_error (_("no signed data\n"));
+	return G10ERR_OPEN_FILE;
     }
-    else
-	sl = files;
 
-    for( ; sl; sl = sl->next ) {
+    for (sl=files; sl; sl = sl->next ) {
 	fp = iobuf_open( sl->d );
 	if( !fp ) {
 	    log_error(_("can't open signed data `%s'\n"),
 						print_fname_stdin(sl->d));
-	    if( !files )
-		free_strlist(sl);
 	    return G10ERR_OPEN_FILE;
 	}
 	do_hash( md, md2, fp, textmode );
 	iobuf_close(fp);
     }
 
-    if( !files )
-	free_strlist(sl);
     return 0;
 }
 
