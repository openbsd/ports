# $OpenBSD: Makefile,v 1.31 2019/07/12 20:47:25 sthen Exp $

COMMENT =	bayesian spam filter

DISTNAME =	bogofilter-1.2.4
CATEGORIES =	mail
REVISION =	2

MAINTAINER =	Marc Espie <espie@openbsd.org>

HOMEPAGE =	http://bogofilter.sourceforge.net/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=bogofilter/}

# GPLv2/GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB =		c iconv m
LIB_DEPENDS =		converters/libiconv

FLAVORS =		db4 sqlite3 qdbm
FLAVOR ?=

DB_ENGINE =		db
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-included-gsl \
			--with-database=${DB_ENGINE}
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include/${DB_DIR}" \
			LDFLAGS="-L${LOCALBASE}/lib/${DB_DIR}"

.if ${FLAVOR} == "db4"
BROKEN-aarch64 =	configure stuck on testing if BDB supports shared environments
DB_DIR =		db4
LIB_DEPENDS +=		databases/db/v4
WANTLIB +=		lib/db4/db>=4
.elif ${FLAVOR} == "sqlite3"
DB_ENGINE =		sqlite3
WANTLIB +=		sqlite3 pthread
LIB_DEPENDS +=		databases/sqlite3
.elif ${FLAVOR} == "qdbm"
DB_ENGINE =		qdbm
LIB_DEPENDS +=		databases/qdbm
WANTLIB +=		qdbm z
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include/" \
			LDFLAGS="-L${LOCALBASE}/lib/ -liconv -lz"
.else
BROKEN-hppa =		configure stuck on testing if BDB supports shared environments
BROKEN-aarch64 =	configure stuck on testing if BDB supports shared environments
DB_DIR =		db
LIB_DEPENDS +=		databases/db/v3
WANTLIB +=		lib/db/db=3
.endif

SAMPLEDIR =		${PREFIX}/share/examples/bogofilter
DOCDIR =		${PREFIX}/share/doc/bogofilter

post-install:
	${INSTALL_DATA_DIR} ${SAMPLEDIR}
	mv ${WRKINST}${SYSCONFDIR}/bogofilter.cf.example ${SAMPLEDIR}
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKBUILD}/doc/README.* ${DOCDIR}
	${INSTALL_DATA} ${WRKBUILD}/doc/*.html ${DOCDIR}
	${INSTALL_DATA} ${WRKBUILD}/doc/integrating-* ${DOCDIR}

.include <bsd.port.mk>
