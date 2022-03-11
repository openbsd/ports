COMMENT =	bayesian spam filter

DISTNAME =	bogofilter-1.2.5
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	mail

MAINTAINER =	Marc Espie <espie@openbsd.org>

HOMEPAGE =	https://bogofilter.sourceforge.io/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=bogofilter/}

# GPLv2/GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB =		c iconv m
LIB_DEPENDS =		converters/libiconv

FLAVORS =		db4 sqlite3 qdbm lmdb
FLAVOR ?=

DB_ENGINE =		db
CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.69
CONFIGURE_ARGS =	--with-included-gsl \
			--with-database=${DB_ENGINE}
CPPFLAGS =		-I${LOCALBASE}/include/${DB_DIR} \
			-I${LOCALBASE}/include
LDFLAGS =		-L${LOCALBASE}/lib/${DB_DIR} \
			-L${LOCALBASE}/lib
CONFIGURE_ENV =		CPPFLAGS="${CPPFLAGS}" \
			LDFLAGS="${LDFLAGS}"

.if ${FLAVOR} == "db4"
BROKEN-aarch64 =	configure stuck on testing if BDB supports shared environments
DB_DIR =		db4
LIB_DEPENDS +=		databases/db/v4
WANTLIB +=		lib/db4/db>=4
.elif ${FLAVOR} == "sqlite3"
DB_ENGINE =		sqlite3
WANTLIB +=		sqlite3
LIB_DEPENDS +=		databases/sqlite3
.elif ${FLAVOR} == "qdbm"
DB_ENGINE =		qdbm
LIB_DEPENDS +=		databases/qdbm
WANTLIB +=		qdbm z
.elif ${FLAVOR} == "lmdb"
DB_ENGINE =		lmdb
LIB_DEPENDS +=		databases/lmdb
WANTLIB +=		lmdb
.else
BROKEN-hppa =		configure stuck on testing if BDB supports shared environments
BROKEN-aarch64 =	configure stuck on testing if BDB supports shared environments
DB_DIR =		db
LIB_DEPENDS +=		databases/db/v3
WANTLIB +=		lib/db/db=3
.endif

SAMPLEDIR =		${PREFIX}/share/examples/bogofilter
DOCDIR =		${PREFIX}/share/doc/bogofilter

BUILD_DEPENDS =		devel/gettext,-tools
post-extract:
	cd ${LOCALBASE}/share/aclocal; \
	    cp iconv.m4 lib-ld.m4 lib-link.m4 lib-prefix.m4 ${WRKSRC}/m4

post-install:
	${INSTALL_DATA_DIR} ${SAMPLEDIR}
	mv ${WRKINST}${SYSCONFDIR}/bogofilter.cf.example ${SAMPLEDIR}
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKBUILD}/doc/README.* ${DOCDIR}
	${INSTALL_DATA} ${WRKBUILD}/doc/*.html ${DOCDIR}
	${INSTALL_DATA} ${WRKBUILD}/doc/integrating-* ${DOCDIR}

.include <bsd.port.mk>
