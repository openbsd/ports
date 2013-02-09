# $OpenBSD: Makefile,v 1.12 2013/02/09 14:49:53 sthen Exp $

COMMENT =	free open-source SQL full-text search engine
BROKEN-hppa =	internal compiler error: internal consistency failure

VERSION =	2.0.4
DISTNAME =	sphinx-${VERSION}-release
PKGNAME =	sphinx-${VERSION}
CATEGORIES =	textproc

HOMEPAGE =	http://www.sphinxsearch.com/

MAINTAINER =	Rama McIntosh <face00@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES =	${HOMEPAGE}/files/

MODULES =	converters/libiconv lang/php

MODPHP_BUILDDEP=No
MODPHP_RUNDEP=No

LOCALSTATEDIR=	${BASELOCALSTATEDIR}/sphinx
SUBST_VARS=	LOCALSTATEDIR

WANTLIB =	c expat m pthread stdc++
CONFIGURE_ARGS = --with-unixodbc=no
CONFIGURE_STYLE = gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS =	pgsql
FLAVOR ?=

.if ${FLAVOR:Mpgsql}
CONFIGURE_ARGS +=--with-pgsql \
		--without-mysql
LIB_DEPENDS +=	databases/postgresql
WANTLIB +=	pq
.else
CONFIGURE_ARGS += --with-mysql
LIB_DEPENDS +=	databases/mysql
WANTLIB +=	crypto ssl z mysqlclient
.endif

# Needs php with pdo_mysql setup.
REGRESS_IS_INTERACTIVE=	Yes
REGRESS_DEPENDS=lang/php/${MODPHP_VERSION},-mysql \
		lang/php/${MODPHP_VERSION},-pdo_mysql \
		databases/mysql,-server
MAKE_ENV=	MODPHP_BIN=${MODPHP_BIN}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sphinx
	${INSTALL_DATA} ${WRKSRC}/doc/sphinx.txt ${PREFIX}/share/doc/sphinx

.include <bsd.port.mk>
