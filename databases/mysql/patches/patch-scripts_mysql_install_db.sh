--- scripts/mysql_install_db.sh.orig	Wed Jan 17 04:39:53 2001
+++ scripts/mysql_install_db.sh	Fri Jan 19 20:47:08 2001
@@ -7,12 +7,6 @@
 #
 # All unrecognized arguments to this script are passed to mysqld.
 
-IN_RPM=0
-case "$1" in
-    -IN-RPM)
-      IN_RPM="1"; shift
-      ;;
-esac
 defaults=
 case "$1" in
     --no-defaults|--defaults-file=*|--defaults-extra-file=*)
@@ -33,7 +27,6 @@
 
   for arg do
     case "$arg" in
-      --force) force=1 ;;
       --basedir=*) basedir=`echo "$arg" | sed -e 's/^[^=]*=//'` ;;
       --ldata=*|--datadir=*) ldata=`echo "$arg" | sed -e 's/^[^=]*=//'` ;;
       --user=*) user=`echo "$arg" | sed -e 's/^[^=]*=//'` ;;
@@ -69,7 +62,6 @@
 execdir=
 bindir=
 basedir=
-force=0
 parse_arguments `$print_defaults $defaults mysqld mysql_install_db`
 parse_arguments PICK-ARGS-FROM-ARGV "$@"
 
@@ -88,52 +80,38 @@
 
 if test ! -x $execdir/mysqld
 then
-  if test "$IN_RPM" -eq 1
-  then
-    echo "FATAL ERROR $execdir/mysqld not found!"
-    exit 1
-  else
     echo "Didn't find $execdir/mysqld"
     echo "You should do a 'make install' before executing this script"
     exit 1
-  fi
 fi
 
-hostname=`@HOSTNAME@`		# Install this too in the user table
+hostname=`hostname -s`		# Install this too in the user table
 
 # Check if hostname is valid
-if test "$IN_RPM" -eq 0 -a $force -eq 0
+resolved=`$bindir/resolveip $hostname 2>&1`
+if [ $? -ne 0 ]
 then
-  resolved=`$bindir/resolveip $hostname 2>&1`
-  if [ $? -ne 0 ]
+  resolved=`$bindir/resolveip localhost 2>&1`
+  if [ $? -eq 0 ]
   then
-    resolved=`$bindir/resolveip localhost 2>&1`
-    if [ $? -eq 0 ]
-    then
-      echo "Sorry, the host '$hostname' could not be looked up."
-      echo "Please configure the 'hostname' command to return a correct hostname."
-      echo "If you want to solve this at a later stage, restart this script with"
-      echo "the --force option"
-      exit 1
-    fi
-    echo "WARNING: The host '$hostname' could not be looked up with resolveip."
-    echo "This probably means that your libc libraries are not 100 % compatible"
-    echo "with this binary MySQL version. The MySQL deamon, mysqld, should work"
-    echo "normally with the exception that host name resolving will not work."
-    echo "This means that you should use IP addresses instead of hostnames"
-    echo "when specifying MySQL privileges !"
+    echo "Sorry, the host '$hostname' could not be looked up."
+    echo "Please configure the 'hostname' command to return a correct hostname."
+    exit 1
   fi
+  echo "WARNING: The host '$hostname' could not be looked up with resolveip."
+  echo "This probably means that your libc libraries are not 100 % compatible"
+  echo "with this binary MySQL version. The MySQL deamon, mysqld, should work"
+  echo "normally with the exception that host name resolving will not work."
+  echo "This means that you should use IP addresses instead of hostnames"
+  echo "when specifying MySQL privileges !"
 fi
 
 # Create database directories mysql & test
-if test "$IN_RPM" -eq 0
-then
-  if test ! -d $ldata; then mkdir $ldata; chmod 700 $ldata ; fi
-  if test ! -d $ldata/mysql; then mkdir $ldata/mysql;  chmod 700 $ldata/mysql ; fi
-  if test ! -d $ldata/test; then mkdir $ldata/test;  chmod 700 $ldata/test ; fi
-  if test -w / -a ! -z "$user"; then
-    chown $user $ldata $ldata/mysql $ldata/test;
-  fi
+if test ! -d $ldata; then mkdir $ldata; chmod 711 $ldata ; fi
+if test ! -d $ldata/mysql; then mkdir $ldata/mysql;  chmod 700 $ldata/mysql ; fi
+if test ! -d $ldata/test; then mkdir $ldata/test;  chmod 700 $ldata/test ; fi
+if test -w / -a ! -z "$user"; then
+  chown $user $ldata $ldata/mysql $ldata/test;
 fi
 
 # Initialize variables
@@ -301,12 +279,6 @@
 END_OF_DATA
 then
   echo ""
-  if test "$IN_RPM" -eq 0
-  then
-    echo "To start mysqld at boot time you have to copy support-files/mysql.server"
-    echo "to the right place for your system"
-    echo
-  fi
   echo "PLEASE REMEMBER TO SET A PASSWORD FOR THE MySQL root USER !"
   echo "This is done with:"
   echo "$bindir/mysqladmin -u root -p password 'new-password'"
@@ -322,15 +294,6 @@
     echo "able to use the new GRANT command!"
   fi
   echo
-  if test -z "$IN_RPM"
-  then
-    echo "You can start the MySQL demon with:"
-    echo "cd @prefix@ ; $bindir/safe_mysqld &"
-    echo
-    echo "You can test the MySQL demon with the benchmarks in the 'sql-bench' directory:"
-    echo "cd sql-bench ; run-all-tests"
-    echo
-  fi
   echo "Please report any problems with the @scriptdir@/mysqlbug script!"
   echo
   echo "The latest information about MySQL is available on the web at"
