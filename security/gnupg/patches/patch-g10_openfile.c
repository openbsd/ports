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


--- g10/openfile.c.orig	Tue Sep  5 17:31:57 2000
+++ g10/openfile.c	Sat Dec 23 14:56:19 2000
@@ -257,7 +257,7 @@ open_sigfile( const char *iname )
 	    buf = m_strdup(iname);
 	    buf[len-4] = 0 ;
 	    a = iobuf_open( buf );
-	    if( opt.verbose )
+	    if( a && opt.verbose )
 		log_info(_("assuming signed data in `%s'\n"), buf );
 	    m_free(buf);
 	}
@@ -329,7 +329,7 @@ try_make_homedir( const char *fname )
 
     if ( ( *defhome == '~'
            && ( strlen(fname) >= strlen (defhome+1)
-                && !strcmp(fname+strlen(defhome+1)-strlen(defhome+1),
+                && !strcmp(fname+strlen(fname)-strlen(defhome+1),
                            defhome+1 ) ))
          || ( *defhome != '~'
               && !compare_filenames( fname, defhome ) )
