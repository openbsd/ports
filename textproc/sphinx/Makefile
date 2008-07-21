# $OpenBSD: Makefile,v 1.1.1.1 2008/07/21 12:42:21 bernd Exp $

COMMENT =	free open-source SQL full-text search engine

DISTNAME =	sphinx-0.9.8
CATEGORIES =	textproc

HOMEPAGE =	http://www.sphinxsearch.com/

MAINTAINER =	Rama McIntosh <face00@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES =	http://www.sphinxsearch.com/downloads/

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
LIB_DEPENDS +=	pq::databases/postgresql
.else
LIB_DEPENDS +=	mysqlclient::databases/mysql
WANTLIB +=	crypto ssl z
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sphinx
	${INSTALL_DATA} ${WRKSRC}/doc/sphinx.txt ${PREFIX}/share/doc/sphinx

.include <bsd.port.mk>
