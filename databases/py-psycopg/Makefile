# $OpenBSD: Makefile,v 1.25 2006/11/16 22:39:02 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"PostgreSQL database adapter for Python"
COMMENT-zope=	"database adapter for Zope"

VERSION=	1.1.21
DISTNAME=	psycopg-${VERSION}
PKGNAME=	py-${DISTNAME}p2
PKGNAME-zope=	py-psycopg-zope-${VERSION}p0
CATEGORIES=	databases

HOMEPAGE=	http://initd.org/projects/psycopg1

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
WANTLIB=		crypto util pq

MASTER_SITES=	http://initd.org/pub/software/psycopg/

MODULES=	lang/python

BUILD_DEPENDS=	:postgresql-server-*:databases/postgresql,-server \
		:py-mxDateTime->=2.0.0:devel/py-mxDateTime
RUN_DEPENDS=	:postgresql-client-*:databases/postgresql \
		:py-mxDateTime->=2.0.0:devel/py-mxDateTime

MULTI_PACKAGES=	-zope
SUBPACKAGE?=

.if defined(PACKAGING) && ${SUBPACKAGE} == "-zope"
RUN_DEPENDS=	:zope-*:www/zope \
		:py-psycopg-${VERSION}*:databases/py-psycopg
PKG_ARCH=	*
WANTLIB=
.endif

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-mxdatetime-includes=${MODPY_SITEPKG}/mx/DateTime/mxDateTime
CONFIGURE_ENV=	PYTHON=${MODPY_BIN}

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/zope/lib/python/Products/
	cd ${WRKSRC}; tar cf - ZPsycopgDA | tar xf - -C ${PREFIX}/lib/zope/lib/python/Products
	${CHOWN} -R ${LIBOWN}:${LIBGRP} ${PREFIX}/lib/zope/lib/python/Products/ZPsycopgDA
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-psycopg/
	${INSTALL_DATA} ${WRKSRC}/doc/examples/* \
		${PREFIX}/share/examples/py-psycopg/
	${CHOWN} ${LIBOWN}:${LIBGRP} ${PREFIX}/lib/python${MODPY_VERSION}/lib-dynload/psycopgmodule.so

.include <bsd.port.mk>
