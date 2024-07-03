COMMENT =	free open-source SQL full-text search engine
BROKEN-hppa =	internal compiler error: internal consistency failure

# Note: this is not Sphinx (the Python documentation generator) -
# see textproc/py-sphinx.

VERSION =	2.2.11
DISTNAME =	sphinx-${VERSION}-release
PKGNAME =	sphinx-${VERSION}
CATEGORIES =	textproc
REVISION =	1

HOMEPAGE =	https://www.sphinxsearch.com/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c execinfo expat iconv m pthread ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

SITES =			${HOMEPAGE}files/

LIB_DEPENDS =		converters/libiconv

LOCALSTATEDIR =		${BASELOCALSTATEDIR}/sphinx

CONFIGURE_ARGS =	--with-unixodbc=no
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -lexecinfo"

FLAVORS =		pgsql
FLAVOR ?=

.if ${FLAVOR:Mpgsql}
CONFIGURE_ARGS +=	--with-pgsql \
			--without-mysql
LIB_DEPENDS +=		databases/postgresql
WANTLIB +=		pq
.else
CONFIGURE_ARGS +=	 --with-mysql
LIB_DEPENDS +=		databases/mariadb
WANTLIB +=		mariadb
.endif

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sphinx
	${INSTALL_DATA} ${WRKSRC}/doc/sphinx.txt ${PREFIX}/share/doc/sphinx

.include <bsd.port.mk>
