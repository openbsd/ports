$OpenBSD: patch-scripts_mysql_install_db.sh,v 1.18 2005/03/23 03:47:20 brad Exp $
--- scripts/mysql_install_db.sh.orig	Fri Mar  4 19:38:15 2005
+++ scripts/mysql_install_db.sh	Tue Mar 15 09:38:55 2005
@@ -7,16 +7,12 @@
 #
 # All unrecognized arguments to this script are passed to mysqld.
 
-in_rpm=0
-windows=0
 defaults=""
 user=""
+user=_mysql
+group=_mysql
+
 case "$1" in
-    -IN-RPM)
-      in_rpm="1"; shift
-      ;;
-esac
-case "$1" in
     --no-defaults|--defaults-file=*|--defaults-extra-file=*)
       defaults="$1"; shift
       ;;
@@ -35,7 +31,6 @@ parse_arguments() {
 
   for arg do
     case "$arg" in
-      --force) force=1 ;;
       --basedir=*) basedir=`echo "$arg" | sed -e 's/^[^=]*=//'` ;;
       --ldata=*|--datadir=*) ldata=`echo "$arg" | sed -e 's/^[^=]*=//'` ;;
       --user=*)
@@ -43,10 +38,9 @@ parse_arguments() {
         # as 'user' (crucial e.g. if log-bin=/some_other_path/
         # where a chown of datadir won't help)
 	 user=`echo "$arg" | sed -e 's/^[^=]*=//'` ;;
+      --group=*) group=`echo "$arg" | sed -e 's/^[^=]*=//'` ;;
       --skip-name-resolve) ip_only=1 ;;
       --verbose) verbose=1 ;;
-      --rpm) in_rpm=1 ;;
-      --windows) windows=1 ;;
       *)
         if test -n "$pick_args"
         then
@@ -82,7 +76,6 @@ ldata=
 execdir=
 bindir=
 basedir=
-force=0
 parse_arguments `$print_defaults $defaults mysqld mysql_install_db`
 parse_arguments PICK-ARGS-FROM-ARGV "$@"
 
@@ -111,52 +104,35 @@ mysqld=$execdir/mysqld
 mysqld_opt=""
 scriptdir=$bindir
 
-if test "$windows" = 1
-then
-  mysqld="./sql/mysqld"
-  mysqld_opt="--language=./sql/share/english"
-  scriptdir="./scripts"
-fi
-
 if test ! -x $mysqld
 then
-  if test "$in_rpm" = 1
-  then
-    echo "FATAL ERROR $mysqld not found!"
-    exit 1
-  else
-    echo "Didn't find $mysqld"
-    echo "You should do a 'make install' before executing this script"
-    exit 1
-  fi
+  echo "FATAL ERROR $mysqld not found!"
+  exit 1
 fi
 
 # Try to determine the hostname
 hostname=`@HOSTNAME@`
 
 # Check if hostname is valid
-if test "$windows" = 0 -a "$in_rpm" = 0 -a $force = 0
+resolved=`$bindir/resolveip $hostname 2>&1`
+if [ $? -ne 0 ]
 then
-  resolved=`$bindir/resolveip $hostname 2>&1`
+  resolved=`$bindir/resolveip localhost 2>&1`
   if [ $? -ne 0 ]
   then
-    resolved=`$bindir/resolveip localhost 2>&1`
-    if [ $? -ne 0 ]
-    then
-      echo "Neither host '$hostname' nor 'localhost' could not be looked up with"
-      echo "$bindir/resolveip"
-      echo "Please configure the 'hostname' command to return a correct hostname."
-      echo "If you want to solve this at a later stage, restart this script with"
-      echo "the --force option"
-      exit 1
-    fi
-    echo "WARNING: The host '$hostname' could not be looked up with resolveip."
-    echo "This probably means that your libc libraries are not 100 % compatible"
-    echo "with this binary MySQL version. The MySQL daemon, mysqld, should work"
-    echo "normally with the exception that host name resolving will not work."
-    echo "This means that you should use IP addresses instead of hostnames"
-    echo "when specifying MySQL privileges !"
+    echo "Neither host '$hostname' nor 'localhost' could not be looked up with"
+    echo "$bindir/resolveip"
+    echo "Please configure the 'hostname' command to return a correct hostname."
+    echo "If you want to solve this at a later stage, restart this script with"
+    echo "the --force option"
+    exit 1
   fi
+  echo "WARNING: The host '$hostname' could not be looked up with resolveip."
+  echo "This probably means that your libc libraries are not 100 % compatible"
+  echo "with this binary MySQL version. The MySQL daemon, mysqld, should work"
+  echo "normally with the exception that host name resolving will not work."
+  echo "This means that you should use IP addresses instead of hostnames"
+  echo "when specifying MySQL privileges !"
 fi
 
 if test "$ip_only" = "1"
@@ -166,12 +142,10 @@ then
 fi
 
 # Create database directories mysql & test
-  if test ! -d $ldata; then mkdir $ldata; chmod 700 $ldata ; fi
-  if test ! -d $ldata/mysql; then mkdir $ldata/mysql;  chmod 700 $ldata/mysql ; fi
-  if test ! -d $ldata/test; then mkdir $ldata/test;  chmod 700 $ldata/test ; fi
-  if test -w / -a ! -z "$user"; then
-    chown $user $ldata $ldata/mysql $ldata/test;
-  fi
+  if test ! -d $ldata; then mkdir -p $ldata; chmod 700 $ldata ; fi
+  if test ! -d $ldata/mysql; then mkdir -p $ldata/mysql;  chmod 700 $ldata/mysql ; fi
+  if test ! -d $ldata/test; then mkdir -p $ldata/test;  chmod 700 $ldata/test ; fi
+  chown -f $user:$group $ldata $ldata/mysql $ldata/test
 
 # Initialize variables
 c_d="" i_d=""
@@ -363,12 +337,6 @@ $c_c
 END_OF_DATA
 then
   echo ""
-  if test "$in_rpm" = "0"
-  then
-    echo "To start mysqld at boot time you have to copy support-files/mysql.server"
-    echo "to the right place for your system"
-    echo
-  fi
   echo "PLEASE REMEMBER TO SET A PASSWORD FOR THE MySQL root USER !"
   echo "To do so, start the server, then issue the following commands:"
   echo "$bindir/mysqladmin -u root password 'new-password'"
@@ -384,15 +352,6 @@ then
     echo "able to use the new GRANT command!"
   fi
   echo
-  if test "$in_rpm" = "0"
-  then
-    echo "You can start the MySQL daemon with:"
-    echo "cd @prefix@ ; $bindir/mysqld_safe &"
-    echo
-    echo "You can test the MySQL daemon with the benchmarks in the 'sql-bench' directory:"
-    echo "cd sql-bench ; perl run-all-tests"
-    echo
-  fi
   echo "Please report any problems with the @scriptdir@/mysqlbug script!"
   echo
   echo "The latest information about MySQL is available on the web at"
