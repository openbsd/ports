# $OpenBSD: Makefile,v 1.3 2010/11/10 22:56:06 jasper Exp $

COMMENT =	free open-source SQL full-text search engine

DISTNAME =	sphinx-0.9.8.1
REVISION =	0
CATEGORIES =	textproc

HOMEPAGE =	http://www.sphinxsearch.com/

MAINTAINER =	Rama McIntosh <face00@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES =	${HOMEPAGE}/downloads/

MODULES =	converters/libiconv

WANTLIB =	c expat m stdc++

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = --with-mysql
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS =	pgsql
FLAVOR ?=

.if ${FLAVOR:L:Mpgsql}
CONFIGURE_ARGS +=--with-pgsql \
		--without-mysql
LIB_DEPENDS +=	::databases/postgresql
WANTLIB +=	pq
.else
LIB_DEPENDS +=	::databases/mysql
WANTLIB +=	crypto ssl z mysqlclient
.endif

# Needs php5 with pdo_mysql setup.
REGRESS_IS_INTERACTIVE=	Yes
PHP_VERSION=    	5
REGRESS_DEPENDS=:php${PHP_VERSION}-mysql-*:www/php${PHP_VERSION}/extensions,-mysql \
		:php${PHP_VERSION}-pdo_mysql-*:www/php${PHP_VERSION}/extensions,-pdo_mysql

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sphinx
	${INSTALL_DATA} ${WRKSRC}/doc/sphinx.txt ${PREFIX}/share/doc/sphinx

.include <bsd.port.mk>
