# $OpenBSD: Makefile,v 1.3 1999/04/01 03:06:51 brad Exp $
# $ FreeBSD: Makefile,v 1.44 1999/03/04 21:27:58 dirk Exp $

DISTNAME=	mysql-3.22.19b
PKGNAME=	mysql-3.22.19
CATEGORIES=	databases

MAINTAINER=	ports@openbsd.org

MASTER_SITES=	\
		ftp://mirror.aarnet.edu.au/mysql/Downloads/MySQL-3.22/ \
		http://www.fh-wolfenbuettel.de/ftp/pub/database/mysql/Downloads/MySQL-3.22/ \
		ftp://ftp.digex.net/pub/database/mysql/Downloads/MySQL-3.22/ \
		ftp://ftp.bse.bg/pub/Unix/database/MySQL/ \
		ftp://ftp.plig.net/pub/mysql/Downloads/MySQL-3.22/ \
		ftp://ftp.sunet.se/pub/unix/databases/relational/mysql/Downloads/MySQL-3.22/

PERL?=		perl

USE_EGCC=	YES
GNU_CONFIGURE=	YES
CONFIGURE_ARGS=	--localstatedir=/var/db/mysql \
		--without-perl \
		--without-debug \
		--without-readline \
		--without-bench
CONFIGURE_ENV+=	PERL=${PERL} \
		PERL5=${PERL} \
		INSTALL_SCRIPT="${INSTALL_SCRIPT}" \
		CXXFLAGS="${CFLAGS} -pthread" \
		CFLAGS="${CFLAGS} -pthread"

CONFIGURE_ARGS+=	--with-mit-threads=no

.if !defined(NO_WARNINGS)
.if (${MACHINE_ARCH} != "i386")
pre-fetch:
	@${ECHO} ""
	@${ECHO} "*** WARNING: this port has only been tested on i386"
	@${ECHO} "*** and may not work on other architectures"
	@${ECHO} ""
.endif
.endif

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

.if !defined(NOPORTDOCS)
	${MKDIR} ${PREFIX}/share/doc/mysql
.for doc in manual.html manual.ps manual_toc.html manual.txt manual.texi include.texi
	${INSTALL_DATA} ${WRKSRC}/Docs/${doc} ${PREFIX}/share/doc/mysql
.endfor
	@if [ ! -f ${PREFIX}/info/dir -a -f /usr/share/info/dir ]; then \
		${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	fi
	${INSTALL_DATA} ${WRKSRC}/Docs/mysql.info ${PREFIX}/info
	@install-info ${PREFIX}/info/mysql.info ${PREFIX}/info/dir
.endif

	${LDCONFIG} -m ${PREFIX}/lib/mysql

.include <bsd.port.mk>
