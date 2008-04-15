# $OpenBSD: Makefile,v 1.1.1.1 2008/04/15 14:14:08 sthen Exp $

COMMENT =	A modular, cross-platform and multi-threaded benchmark tool
DISTNAME =	sysbench-0.4.8
CATEGORIES =	benchmarks 
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=sysbench/}

HOMEPAGE =	http://sysbench.sourceforge.net/

# GPL
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
WANTLIB =		m c pthread 

MAINTAINER =		Jung <moorang@gmail.com>

BUILD_DEPENDS =		::textproc/libxslt \
			::textproc/docbook-xsl
NO_REGRESS =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		PREFIX=${PREFIX}

USE_GMAKE =		yes
USE_LIBTOOL =		yes

FLAVORS =		mysql pgsql
FLAVOR ?=

.if ${FLAVOR:L:Mmysql}
CONFIGURE_ARGS +=	--with-mysql
LIB_DEPENDS +=		lib/mysql/mysqlclient_r.>=10::databases/mysql
WANTLIB +=		crypto ssl z
.else
CONFIGURE_ARGS +=	--with-mysql=no
.endif

.if ${FLAVOR:L:Mpgsql}
CONFIGURE_ARGS +=	--with-pgsql
LIB_DEPENDS +=		pq.>=3:postgresql-client-*:databases/postgresql
#crypto ssl
.else
CONFIGURE_ARGS +=	--with-pgsql=no
.endif

pre-configure:
	@rm ${WRKBUILD}/doc/manual.html

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sysbench
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sysbench
	${INSTALL_DATA} ${WRKBUILD}/doc/manual.html ${PREFIX}/share/doc/sysbench
	${INSTALL_PROGRAM} ${WRKBUILD}/sysbench/sysbench ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKBUILD}/scripts/sb_*.sh ${PREFIX}/share/examples/sysbench

.include <bsd.port.mk>
