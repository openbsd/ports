$OpenBSD: patch-scripts_mysql_install_db.sh,v 1.16 2004/05/21 12:16:21 brad Exp $
--- scripts/mysql_install_db.sh.orig	2004-05-13 20:53:23.000000000 -0400
+++ scripts/mysql_install_db.sh	2004-05-19 11:14:59.000000000 -0400
@@ -7,12 +7,9 @@
 #
 # All unrecognized arguments to this script are passed to mysqld.
 
-IN_RPM=0
-case "$1" in
-    -IN-RPM)
-      IN_RPM="1"; shift
-      ;;
-esac
+user=_mysql
+group=_mysql
+
 defaults=
 case "$1" in
     --no-defaults|--defaults-file=*|--defaults-extra-file=*)
@@ -33,10 +30,10 @@ parse_arguments() {
 
   for arg do
     case "$arg" in
-      --force) force=1 ;;
       --basedir=*) basedir=`echo "$arg" | sed -e 's/^[^=]*=//'` ;;
       --ldata=*|--datadir=*) ldata=`echo "$arg" | sed -e 's/^[^=]*=//'` ;;
       --user=*) user=`echo "$arg" | sed -e 's/^[^=]*=//'` ;;
+      --group=*) group=`echo "$arg" | sed -e 's/^[^=]*=//'` ;;
       --skip-name-resolve) ip_only=1 ;;
       *)
         if test -n "$pick_args"
@@ -70,7 +67,6 @@ ldata=
 execdir=
 bindir=
 basedir=
-force=0
 parse_arguments `$print_defaults $defaults mysqld mysql_install_db`
 parse_arguments PICK-ARGS-FROM-ARGV "$@"
 
@@ -97,43 +93,33 @@ mdata=$ldata/mysql
 
 if test ! -x $execdir/mysqld
 then
-  if test "$IN_RPM" = "1"
-  then
-    echo "FATAL ERROR $execdir/mysqld not found!"
-    exit 1
-  else
-    echo "Didn't find $execdir/mysqld"
-    echo "You should do a 'make install' before executing this script"
-    exit 1
-  fi
+  echo "FATAL ERROR $execdir/mysqld not found!"
+  exit 1
 fi
 
 # Try to determine the hostname
 hostname=`@HOSTNAME@`
 
 # Check if hostname is valid
-if test "$IN_RPM" = "0" -a $force = "0"
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
-      echo "Neither host '$hostname' and 'localhost' could not be looked up with"
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
+    echo "Neither host '$hostname' and 'localhost' could not be looked up with"
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
@@ -143,12 +129,10 @@ then
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
@@ -333,12 +317,6 @@ $c_c
 END_OF_DATA
 then
   echo ""
-  if test "$IN_RPM" = "0"
-  then
-    echo "To start mysqld at boot time you have to copy support-files/mysql.server"
-    echo "to the right place for your system"
-    echo
-  fi
   echo "PLEASE REMEMBER TO SET A PASSWORD FOR THE MySQL root USER !"
   echo "To do so, start the server, then issue the following commands:"
   echo "$bindir/mysqladmin -u root password 'new-password'"
@@ -354,15 +332,6 @@ then
     echo "able to use the new GRANT command!"
   fi
   echo
-  if test "$IN_RPM" = "0"
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
