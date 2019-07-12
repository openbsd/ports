# $OpenBSD: Makefile,v 1.28 2019/07/12 20:50:15 sthen Exp $

COMMENT =	free open-source SQL full-text search engine
BROKEN-hppa =	internal compiler error: internal consistency failure

# Note: this is not Sphinx (the Python documentation generator) -
# see also textproc/py-sphinx.

VERSION =	2.2.9
DISTNAME =	sphinx-${VERSION}-release
PKGNAME =	sphinx-${VERSION}
CATEGORIES =	textproc
REVISION =	2

HOMEPAGE =	http://www.sphinxsearch.com/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c expat iconv m pthread ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${HOMEPAGE}/files/

MODULES =		lang/php

MODPHP_BUILDDEP =	No
MODPHP_RUNDEP =		No

LIB_DEPENDS =		converters/libiconv

LOCALSTATEDIR =		${BASELOCALSTATEDIR}/sphinx

CONFIGURE_ARGS =	--with-unixodbc=no
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_header_execinfo_h=no
# checks for execinfo header but not libexecinfo for backtrace* functions,
# so it's not used anyway

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
WANTLIB +=		crypto ssl mariadb
.endif

# Needs php with mysqli setup and mariadb listening on 127.0.0.1.
TEST_IS_INTERACTIVE =	Yes

TEST_DEPENDS =		lang/php/${MODPHP_VERSION},-mysql \
			lang/php/${MODPHP_VERSION},-mysqli \
			databases/mariadb,-server
MAKE_ENV =		MODPHP_BIN=${MODPHP_BIN}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sphinx
	${INSTALL_DATA} ${WRKSRC}/doc/sphinx.txt ${PREFIX}/share/doc/sphinx

.include <bsd.port.mk>
