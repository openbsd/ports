# $OpenBSD: Makefile,v 1.20 2000/03/24 22:11:38 espie Exp $
# $FreeBSD: Makefile,v 1.44 1999/03/04 21:27:58 dirk Exp $

BROKEN=		installs files automatically in /etc

DISTNAME=	mysql-3.22.32
CATEGORIES=	databases
NEED_VERSION=	1.73
MASTER_SITES=	http://web.tryc.on.ca/mysql/Downloads/MySQL-3.22/ \
		http://mysql.he.net/Downloads/MySQL-3.22/ \
		http://www.buoy.com/mysql/Downloads/MySQL-3.22/ \
		ftp://ftp.netcasting.net/pub/mysql/Downloads/MySQL-3.22/ \
		http://www.mysql.net/Downloads/MySQL-3.22/ \
		http://www.gina.net/mysql/Downloads/MySQL-3.22/ \
		http://mysql.pingzero.net/Downloads/MySQL-3.22/ \
		ftp://ftp.digex.net/pub/packages/database/mysql/Downloads/MySQL-3.22/ 


MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		COPY
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.if ${MACHINE_ARCH} == "sparc"
BROKEN=		"pthreads are currently not working SPARC"
.endif

DB_DIR?=	/var/mysql

GNU_CONFIGURE=	Yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static \
		 --enable-thread-safe-client \
		 --localstatedir="${DB_DIR}" \
		 --without-perl \
		 --without-debug \
		 --without-readline \
		 --without-bench \
		 --without-mit-threads \
		 --with-unix-socket-path="${DB_DIR}/mysql.sock"
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -pthread" \
		CXXFLAGS="${CXXFLAGS} -pthread"

pre-build:      
	@echo ""
	@echo "*** WARNING: you may see an error such as"
	@echo "***       virtual memory exhausted"
	@echo "*** when building this package.  If you do you must increase"
	@echo "*** your limits.  See the man page for your shell and look"
	@echo "*** for the 'limit' or 'ulimit' command."
	@echo ""

pre-install:
	@sed -e "s|@PREFIX@|${PREFIX}|" ${FILESDIR}/startup.sh > ${WRKDIR}/startup.sh
.if !defined(PACKAGE_BUILDING)
.if exists(${DB_DIR}) && !defined(OVERWRITE_DB)
	@echo "You appear to already have a mysql database directory in ${DB_DIR}."
	@echo ""
	@echo "In order to preserve your existing data, you should:"
	@echo "		- dump all your databases"
	@echo "		- kill mysql if it is running"
	@echo "		- delete the ${DB_DIR} directory"
	@echo "		- run 'make install'"
	@echo "		- start up mysql"
	@echo "		- re-create all of your database"
	@echo "		- re-load your data"
	@echo ""
	@echo "If you understand the consequences of this upgrade, please re-build this"
	@echo "port with the environment variable OVERWRITE_DB defined."
	@false
.endif
	@PKG_PREFIX="${PREFIX}" PKG_DB_DIR="${DB_DIR}" sh ${PKGDIR}/INSTALL ${DISTNAME} PRE-INSTALL
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mysql
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mysql/Img
	${INSTALL_SCRIPT} ${WRKDIR}/startup.sh ${PREFIX}/lib/mysql
	cd ${WRKSRC}/Docs; ${INSTALL_DATA} manual.html manual.ps \
	manual_toc.html manual.txt ${PREFIX}/share/doc/mysql
	${INSTALL_DATA} ${WRKSRC}/Docs/Img/*.gif ${PREFIX}/share/doc/mysql/Img
	@install-info ${PREFIX}/info/mysql.info ${PREFIX}/info/dir
	@${LDCONFIG} -m ${PREFIX}/lib/mysql
.if !defined(PACKAGE_BUILDING)
	@PKG_PREFIX="${PREFIX}" PKG_DB_DIR="${DB_DIR}" sh ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL
.endif

.include <bsd.port.mk>
