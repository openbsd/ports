# $OpenBSD: Makefile,v 1.48 2011/11/18 00:35:08 espie Exp $

SHARED_ONLY=		Yes

COMMENT-main=		PostgreSQL database adapter for Python
COMMENT-examples=	examples for PostgreSQL database adapter for Python
COMMENT-zope=		database adapter for Zope

VERSION=		1.1.21
DISTNAME=		psycopg-${VERSION}
PKGNAME=		py-${DISTNAME}
PKGNAME-main=		py-${DISTNAME}
REVISION-main =		13
FULLPKGNAME-examples=	py-psycopg-examples-${VERSION}
REVISION-examples =	6
FULLPKGPATH-examples=	databases/py-psycopg,-examples
FULLPKGNAME-zope=	py-psycopg-zope-${VERSION}
REVISION-zope =		7
FULLPKGPATH-zope=	databases/py-psycopg,-zope,python2.4
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

FLAVORS=	python2.4 python2.7
.if !defined(FLAVOR) || empty(FLAVOR)
FLAVOR=	python2.7
.endif

.if ${FLAVOR} == "python2.4"
MULTI_PACKAGES=	-main -examples -zope
.elif ${FLAVOR} == "python2.7"
MULTI_PACKAGES=	-main -examples
.else
ERRORS+=	"Fatal: You must select one version: ${FLAVORS}"
.endif

MODPY_VERSION=	${FLAVOR:S/python//}
BUILD_DEPENDS+=	py-mxDateTime->=2.0.0-${FLAVOR}:devel/py-mxDateTime,${FLAVOR}
RUN_DEPENDS+=	py-mxDateTime->=2.0.0-${FLAVOR}:devel/py-mxDateTime,${FLAVOR}

RUN_DEPENDS-examples=	py-psycopg-${VERSION}:${PKGPATH}
PKG_ARCH-examples=	*

RUN_DEPENDS-zope=	py-psycopg-${VERSION}-python2.4:${BUILD_PKGPATH} \
			${MODPY_RUN_DEPENDS}
PKG_ARCH-zope=		*

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-mxdatetime-includes=${MODPY_SITEPKG}/mx/DateTime/mxDateTime

NO_REGRESS=	Yes

post-install:
.if ${MULTI_PACKAGES:M-zope}
	${INSTALL_DATA_DIR} ${PREFIX}/lib/zope/lib/python/Products/
	cd ${WRKSRC}; tar cf - ZPsycopgDA | tar xf - -C ${PREFIX}/lib/zope/lib/python/Products
	chown -R ${LIBOWN}:${LIBGRP} ${PREFIX}/lib/zope/lib/python/Products/ZPsycopgDA
.endif
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-psycopg/
	${INSTALL_DATA} ${WRKSRC}/doc/examples/* \
		${PREFIX}/share/examples/py-psycopg/
	chown ${LIBOWN}:${LIBGRP} ${PREFIX}/lib/python${MODPY_VERSION}/lib-dynload/psycopgmodule.so

.include <bsd.port.mk>
