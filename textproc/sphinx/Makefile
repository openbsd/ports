# $OpenBSD: Makefile,v 1.19 2014/09/13 18:09:22 brad Exp $

COMMENT =	free open-source SQL full-text search engine
BROKEN-hppa =	internal compiler error: internal consistency failure

VERSION =	2.0.4
DISTNAME =	sphinx-${VERSION}-release
PKGNAME =	sphinx-${VERSION}
REVISION =	2
CATEGORIES =	textproc

HOMEPAGE =	http://www.sphinxsearch.com/

MAINTAINER =	Rama McIntosh <face00@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c expat m pthread stdc++

MASTER_SITES =		${HOMEPAGE}/files/

MODULES =		converters/libiconv lang/php

MODPHP_BUILDDEP =	No
MODPHP_RUNDEP =		No

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
WANTLIB +=		crypto ssl z mysqlclient
.endif

# Needs php with pdo_mysql setup.
TEST_IS_INTERACTIVE =	Yes

TEST_DEPENDS =		lang/php/${MODPHP_VERSION},-mysql \
			lang/php/${MODPHP_VERSION},-pdo_mysql \
			databases/mariadb,-server
MAKE_ENV =		MODPHP_BIN=${MODPHP_BIN}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sphinx
	${INSTALL_DATA} ${WRKSRC}/doc/sphinx.txt ${PREFIX}/share/doc/sphinx

.include <bsd.port.mk>
