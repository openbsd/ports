# $OpenBSD: Makefile,v 1.50 2011/12/20 19:07:07 jasper Exp $

SHARED_ONLY=		Yes

COMMENT-main=		PostgreSQL database adapter for Python
COMMENT-examples=	examples for PostgreSQL database adapter for Python

VERSION=		1.1.21
DISTNAME=		psycopg-${VERSION}
PKGNAME=		py-${DISTNAME}
PKGNAME-main=		py-${DISTNAME}
REVISION-main =		15
FULLPKGNAME-examples=	py-psycopg-examples-${VERSION}
REVISION-examples =	7
FULLPKGPATH-examples=	databases/py-psycopg,-examples
CATEGORIES=		databases

HOMEPAGE=		http://initd.org/projects/psycopg1

MAINTAINER=		Aleksander Piotrowski <alek@openbsd.org>

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

WANTLIB-main=		crypto util pq

MASTER_SITES=	http://initd.org/pub/software/psycopg/

MODULES=	lang/python

BUILD_DEPENDS=	databases/postgresql,-server
RUN_DEPENDS=	databases/postgresql

MULTI_PACKAGES=	-main -examples

BUILD_DEPENDS+=	py-mxDateTime->=2.0.0:devel/py-mxDateTime
RUN_DEPENDS+=	py-mxDateTime->=2.0.0:devel/py-mxDateTime

RUN_DEPENDS-examples=	py-psycopg-${VERSION}:${PKGPATH}
PKG_ARCH-examples=	*

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-mxdatetime-includes=${MODPY_SITEPKG}/mx/DateTime/mxDateTime

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-psycopg/
	${INSTALL_DATA} ${WRKSRC}/doc/examples/* \
		${PREFIX}/share/examples/py-psycopg/
	chown ${LIBOWN}:${LIBGRP} ${PREFIX}/lib/python${MODPY_VERSION}/lib-dynload/psycopgmodule.so

.include <bsd.port.mk>
