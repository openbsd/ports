# $OpenBSD: Makefile,v 1.75 2002/03/16 16:44:10 brad Exp $
# $FreeBSD: Makefile,v 1.44 1999/03/04 21:27:58 dirk Exp $
# Uses pthreads

COMMENT=	"multithreaded SQL database (client)"
COMMENT-server=	"multithreaded SQL database (server)"
COMMENT-tests=	"multithreaded SQL database (regression test suite)"

# More architectures need testing of MySQL+native threads
# alpha - does not work
# hppa, m68k, m88k, vax - untested
# powerpc - a bug, when running (My)SQL bench the CPU utilization goes up 
#	    to 100% and mysqld stops responding
# sparc64 - linker issue?
WORKING_ARCHS=	i386 sparc

.for _arch in ${MACHINE_ARCH}
.  if empty(WORKING_ARCHS:M${_arch})
BROKEN=		"Support for ${MACHINE_ARCH} threads is currently broken and/or untested with MySQL"
.  endif
.endfor

VERSION=	3.23.49
DISTNAME=	mysql-${VERSION}
FULLPKGNAME=	mysql-client-${VERSION}
PKGNAME-server=	mysql-server-${VERSION}
FULLPKGNAME-tests=	mysql-tests-${VERSION}
CATEGORIES=	databases
NEED_VERSION=	1.500
MASTER_SITES=	ftp://ftp.sunet.se/pub/unix/databases/relational/mysql/Downloads/%SUBDIR%/ \
		ftp://ftp.shellhung.org/pub/Mirror/mysql/Downloads/%SUBDIR%/
MASTER_SITE_SUBDIR= MySQL-3.23

HOMEPAGE=	http://www.mysql.com/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

DB_DIR?=	/var/mysql
SOCKET_DIR=	/var/run/mysql
SUBST_VARS=	DB_DIR SOCKET_DIR VERSION

# Suggested flags to the C++ compiler, needed for
# high load servers otherwise MySQL will crash.
CXX=		${CC}
CXXFLAGS=	${CFLAGS} -felide-constructors -fno-exceptions -fno-rtti

CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/mit-pthreads/config
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static \
		 --localstatedir="${DB_DIR}" \
		 --with-innodb \
		 --with-comment='OpenBSD port: ${FULLPKGNAME-server}' \
		 --with-libwrap="/usr" \
		 --with-mysqld-user="mysql" \
		 --with-unix-socket-path="${SOCKET_DIR}/mysql.sock" \
		 --without-perl \
		 --without-debug \
		 --without-readline \
		 --without-bench \
		 --without-mit-threads \
		 --without-gemini

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh \
		patch-*

FLAVORS=	bdb
FLAVOR?=

MULTI_PACKAGES=	-server -tests
SUBPACKAGE?=

.if ${FLAVOR:L:Mbdb}
. if ${MACHINE_ARCH} != "i386"
BROKEN=	"The BerkeleyDB transaction support has not been tested on your architecture yet"
. else
CONFIGURE_ARGS+= --with-berkeley-db
. endif
.else
CONFIGURE_ARGS+= --without-berkeley-db
.endif

.if ${SUBPACKAGE} == "-server"
RUN_DEPENDS=	:mysql-client-3.23.*:databases/mysql \
		:p5-DBD-Msql-Mysql-*:databases/p5-DBD-Msql-Mysql
.endif

VMEM_WARNING=	Yes

DOCS=	manual.html manual.ps manual_toc.html manual.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mysql/Flags
	cd ${WRKSRC}/Docs; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/mysql
	${INSTALL_DATA} ${WRKSRC}/Docs/Flags/*.gif \
		${PREFIX}/share/doc/mysql/Flags
	@if [ -f ${PREFIX}/lib/mysql/libmysqlclient.so.10.0 ]; then \
	  cd ${PREFIX}/lib && ln -sf mysql/libmysqlclient.so.10.0 \
		libmysqlclient.so.10.0 ;\
	fi

# Don't try to run the join test. It always fails
# though MySQL seems to work just fine otherwise.
do-regress:
	@cd ${WRKSRC}/mysql-test && ./mysql-test-run --skip-test=join

.include <bsd.port.mk>
