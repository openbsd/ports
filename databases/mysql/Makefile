# $OpenBSD: Makefile,v 1.6 1999/06/03 14:06:32 brad Exp $
# $FreeBSD: Makefile,v 1.44 1999/03/04 21:27:58 dirk Exp $

DISTNAME=	mysql-3.22.22
PKGNAME=	mysql-3.22.22
CATEGORIES=	databases
MASTER_SITES=	http://www.mysql.org/Downloads/MySQL-3.22/ \
		http://web.tryc.on.ca/mysql/Downloads/MySQL-3.22/ \
		http://mysql.he.net/Downloads/MySQL-3.22/ \
		http://www.buoy.com/mysql/Downloads/MySQL-3.22/ \
		ftp://ftp.netcasting.net/pub/mysql/Downloads/MySQL-3.22/ \
		http://www.mysql.net/Downloads/MySQL-3.22/ \
		http://www.gina.net/mysql/Downloads/MySQL-3.22/ \
		http://mysql.pingzero.net/Downloads/MySQL-3.22/ \
		ftp://ftp.digex.net/pub/database/mysql/Downloads/MySQL-3.22/

MAINTAINER=	ports@openbsd.org

.if ${MACHINE_ARCH} == "sparc"
BROKEN=		"pthread's are currently not working SPARC"
.endif

PERL?=		perl

USE_EGCC=	yes
USE_EGXX=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--localstatedir=/var/db/mysql \
		--without-perl \
		--without-debug \
		--without-readline \
		--without-bench \
		--without-mit-threads

CONFIGURE_ENV+=	PERL=${PERL} \
		PERL5=${PERL} \
		CFLAGS="${CFLAGS} -pthread" \
		CXXFLAGS="${CFLAGS} -pthread"

pre-install:
.if !defined(PACKAGE_BUILDING)
	@ ${SETENV} ${MAKE_ENV} ${PERL} ${SCRIPTDIR}/check_old_version
.endif

post-install:
	${MKDIR} ${PREFIX}/share/mysql/mysql
.if !defined(PACKAGE_BUILDING)
	${PREFIX}/bin/mysql_install_db
.endif
	@ ${ECHO} "#!/bin/sh" > ${PREFIX}/lib/mysql/startup.sh
	@ ${ECHO} "#" >> ${PREFIX}/lib/mysql/startup.sh
	@ ${ECHO} "" >> ${PREFIX}/lib/mysql/startup.sh
	@ ${ECHO} "/sbin/ldconfig -m ${PREFIX}/lib/mysql" >> ${PREFIX}/lib/mysql/startup.sh
	@ ${ECHO} "" >> ${PREFIX}/lib/mysql/startup.sh
	@ ${ECHO} "if [ -x ${PREFIX}/bin/safe_mysqld ]" >> ${PREFIX}/lib/mysql/startup.sh
	@ ${ECHO} "then" >> ${PREFIX}/lib/mysql/startup.sh
	@ ${ECHO} "	${PREFIX}/bin/safe_mysqld > /dev/null & && ${ECHO} -n ' mysql'" >> ${PREFIX}/lib/mysql/startup.sh
	@ ${ECHO} "fi" >> ${PREFIX}/lib/mysql/startup.sh
	@ /bin/chmod 750 ${PREFIX}/lib/mysql/startup.sh

	${MKDIR} ${PREFIX}/share/doc/mysql
.for doc in manual.html manual.ps manual_toc.html manual.txt manual.texi include.texi
	${INSTALL_DATA} ${WRKSRC}/Docs/${doc} ${PREFIX}/share/doc/mysql
.endfor
	@if [ ! -f ${PREFIX}/info/dir -a -f /usr/share/info/dir ]; then \
		${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	fi
	${INSTALL_DATA} ${WRKSRC}/Docs/mysql.info ${PREFIX}/info
	@install-info ${PREFIX}/info/mysql.info ${PREFIX}/info/dir
	${LDCONFIG} -m ${PREFIX}/lib/mysql

.include <bsd.port.mk>
