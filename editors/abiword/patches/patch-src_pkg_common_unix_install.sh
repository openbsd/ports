--- src/pkg/common/unix/scripts/install.sh.orig	Sun Feb 18 18:29:05 2001
+++ src/pkg/common/unix/scripts/install.sh	Sun Feb 18 18:33:46 2001
@@ -42,7 +42,7 @@
 fi
 
 # Make sure the target dir exists
-mkdir -p $TARGET
+mkdir -p -m 755 $TARGET
 
 if [ ! -d $TARGET ]
 then
@@ -57,7 +57,7 @@
 then
     LIBEXECDIR=${TARGET}/bin
 fi
-mkdir -p $LIBEXECDIR
+mkdir -p -m 755 $LIBEXECDIR
 
 if [ ! -d $LIBEXECDIR ]
 then
@@ -78,10 +78,15 @@
 # Copy the files from $SRCDIR to $TARGET
 (cd $SRCDIR/AbiSuite; tar cf - *) | (cd $TARGET; tar xf -)
 
+find $TARGET -type d -exec chmod 755 {} \;
+find $TARGET -type f -exec chmod 644 {} \;
+
 echo "Installing program binaries to [$LIBEXECDIR]..."
 # Setup bins 
 (cd $SRCDIR/bin; tar cf - Abi*) | (cd $LIBEXECDIR; tar xf -)
 
+find $LIBEXECDIR -exec chmod 755 {} \;
+
 ########################################################################
 # If we're on Solaris, run makepsres on the font path
 ########################################################################
@@ -118,7 +123,7 @@
 
 echo "Creating symbolic links at [$BINDIR/AbiWord] and [$BINDIR/abiword]..."
 
-mkdir -p $BINDIR
+mkdir -p -m 755 $BINDIR
 
 # NOTE : Solaris ln doesn't seem to honor the -f (force flag), so
 # NOTE : we have to remove them first.
