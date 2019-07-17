# $OpenBSD: Makefile,v 1.25 2019/07/17 14:49:20 danj Exp $

COMMENT =	modular, cross-platform and multi-threaded benchmark tool
DISTNAME =	sysbench-0.4.8
REVISION =	14
CATEGORIES =	benchmarks
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=sysbench/}

HOMEPAGE =	http://sysbench.sourceforge.net/

# GPL
PERMIT_PACKAGE =	Yes

WANTLIB =		m c pthread

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS =		textproc/docbook-xsl
NO_TEST =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		PREFIX=${PREFIX}

USE_GMAKE =		yes

FLAVORS =		mysql pgsql
FLAVOR ?=

.if ${FLAVOR:Mmysql}
CONFIGURE_ARGS +=	--with-mysql
LIB_DEPENDS +=		databases/mariadb
WANTLIB +=		crypto ssl ${COMPILER_LIBCXX} z mariadb iconv
.else
CONFIGURE_ARGS +=	--with-mysql=no
.endif

.if ${FLAVOR:Mpgsql}
CONFIGURE_ARGS +=	--with-pgsql
LIB_DEPENDS +=		databases/postgresql
WANTLIB +=		pq crypto ssl
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
