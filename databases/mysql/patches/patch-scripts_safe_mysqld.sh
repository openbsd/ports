$OpenBSD: patch-scripts_safe_mysqld.sh,v 1.8 2002/12/14 23:56:43 brad Exp $
--- scripts/safe_mysqld.sh.orig	Thu Dec  5 04:37:05 2002
+++ scripts/safe_mysqld.sh	Sat Dec 14 04:13:07 2002
@@ -68,34 +68,16 @@ parse_arguments() {
   done
 }
 
-MY_PWD=`pwd`
-# Check if we are starting this relative (for the binary release)
-if test -d $MY_PWD/data/mysql -a -f ./share/mysql/english/errmsg.sys -a \
- -x ./bin/mysqld
-then
-  MY_BASEDIR_VERSION=$MY_PWD		# Where bin, share and data are
-  ledir=$MY_BASEDIR_VERSION/bin		# Where mysqld is
-  DATADIR=$MY_BASEDIR_VERSION/data
-  if test -z "$defaults"
-  then
-    defaults="--defaults-extra-file=$MY_BASEDIR_VERSION/data/my.cnf"
-  fi
-# Check if this is a 'moved install directory'
-elif test -f ./var/mysql/db.frm -a -f ./share/mysql/english/errmsg.sys -a \
- -x ./libexec/mysqld
-then
-  MY_BASEDIR_VERSION=$MY_PWD		# Where libexec, share and var are
-  ledir=$MY_BASEDIR_VERSION/libexec	# Where mysqld is
-  DATADIR=$MY_BASEDIR_VERSION/var
-else
-  MY_BASEDIR_VERSION=@prefix@
-  DATADIR=@localstatedir@
-  ledir=@libexecdir@
-fi
+MY_BASEDIR_VERSION=@prefix@
+ledir=@libexecdir@
+DATADIR=@localstatedir@
 
 MYSQL_UNIX_PORT=${MYSQL_UNIX_PORT:-@MYSQL_UNIX_ADDR@}
 MYSQL_TCP_PORT=${MYSQL_TCP_PORT:-@MYSQL_TCP_PORT@}
-user=@MYSQLD_USER@
+user=mysql
+group=mysql
+
+socket_dir=`dirname $MYSQL_UNIX_PORT`
 
 # Use the mysqld-max binary by default if the user doesn't specify a binary
 if test -x $ledir/mysqld-max
@@ -159,9 +141,9 @@ then
   NOHUP_NICENESS=`nohup nice 2>&1`
   if test $? -eq 0 && test x"$NOHUP_NICENESS" != x0 && nice --1 echo foo > /dev/null 2>&1
   then
-    if $NOHUP_NICENESS -gt 0
+    if test $NOHUP_NICENESS -gt 0
     then
-      $NOHUP_NICENESS="nice --$NOHUP_NICENESS nohup"
+      NOHUP_NICENESS="nice --$NOHUP_NICENESS nohup"
     else
       NOHUP_NICENESS="nice -$NOHUP_NICENESS nohup"
     fi
@@ -226,10 +208,17 @@ fi
 echo "Starting $MYSQLD daemon with databases from $DATADIR"
 
 # Does this work on all systems?
-#if type ulimit | grep "shell builtin" > /dev/null
-#then
-#  ulimit -n 256 > /dev/null 2>&1		# Fix for BSD and FreeBSD systems
-#fi
+if type ulimit | grep "shell builtin" > /dev/null
+then
+  ulimit -n 256 > /dev/null 2>&1		# Fix for BSD and FreeBSD systems
+fi
+
+if test ! -d $socket_dir
+then
+   mkdir -p $socket_dir
+   chown $user:$group $socket_dir
+   chmod 711 $socket_dir
+fi
 
 echo "`date +'%y%m%d %H:%M:%S  mysqld started'`" >> $err_log
 while true
@@ -244,34 +233,6 @@ do
   if test ! -f $pid_file		# This is removed if normal shutdown
   then
     break
-  fi
-
-  if @IS_LINUX@
-  then
-    # Test if one process was hanging.
-    # This is only a fix for Linux (running as base 3 mysqld processes)
-    # but should work for the rest of the servers.
-    # The only thing is ps x => redhat 5 gives warnings when using ps -x.
-    # kill -9 is used or the process won't react on the kill.
-    numofproces=`ps xa | grep -v "grep" | grep -c $ledir/$MYSQLD`
-    echo -e "\nNumber of processes running now: $numofproces" | tee -a $err_log
-    I=1
-    while test "$I" -le "$numofproces"
-    do 
-      PROC=`ps xa | grep $ledir/$MYSQLD | grep -v "grep" | sed -n '$p'` 
-	for T in $PROC
-	do
-	  break
-	done
-	#    echo "TEST $I - $T **"
-	if kill -9 $T
-	then
-	  echo "$MYSQLD process hanging, pid $T - killed" | tee -a $err_log
-	else 
-	  break
-	fi
-	I=`expr $I + 1`
-    done
   fi
 
   echo "`date +'%y%m%d %H:%M:%S'`  mysqld restarted" | tee -a $err_log
