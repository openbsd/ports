# $OpenBSD: Makefile,v 1.34 2009/04/26 11:01:04 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT-main=		PostgreSQL database adapter for Python
COMMENT-examples=	examples for PostgreSQL database adapter for Python
COMMENT-zope=		database adapter for Zope

VERSION=		1.1.21
DISTNAME=		psycopg-${VERSION}
PKGNAME=		py-${DISTNAME}p6
PKGNAME-main=		py-${DISTNAME}p7
FULLPKGNAME-examples=	py-psycopg-examples-${VERSION}p0
FULLPKGNAME-zope=	py-psycopg-zope-${VERSION}p3
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
MODULES-zope=	www/zope

BUILD_DEPENDS=	:postgresql-server-*:databases/postgresql,-server
RUN_DEPENDS=	:postgresql-client-*:databases/postgresql

FLAVORS=	python2.4 python2.5
FLAVOR?=	python2.5

.if ${FLAVOR:L:Mpython2.4} && !${FLAVOR:L:Npython2.4}
MULTI_PACKAGES=	-main -zope
.elif ${FLAVOR:L:Mpython2.5} && !${FLAVOR:L:Npython2.5}
MULTI_PACKAGES=	-main -examples
.else
ERRORS+=	"Fatal: You must select one version: ${FLAVORS}"
.endif

MODPY_VERSION=	${FLAVOR:S/python//}
BUILD_DEPENDS+=	:py-mxDateTime->=2.0.0*-${FLAVOR}:devel/py-mxDateTime,${FLAVOR}
RUN_DEPENDS+=	:py-mxDateTime->=2.0.0*-${FLAVOR}:devel/py-mxDateTime,${FLAVOR}

RUN_DEPENDS-zope=	:py-psycopg-${VERSION}*-python${MODZOPE_PYTHON_VERSION}:${BUILD_PKGPATH} \
			${MODPY_RUN_DEPENDS}
PKG_ARCH-zope=		*

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-mxdatetime-includes=${MODPY_SITEPKG}/mx/DateTime/mxDateTime

NO_REGRESS=	Yes

post-install:
.if ${MULTI_PACKAGES:L:M-zope}
	${INSTALL_DATA_DIR} ${PREFIX}/lib/zope/lib/python/Products/
	cd ${WRKSRC}; tar cf - ZPsycopgDA | tar xf - -C ${PREFIX}/lib/zope/lib/python/Products
	${CHOWN} -R ${LIBOWN}:${LIBGRP} ${PREFIX}/lib/zope/lib/python/Products/ZPsycopgDA
.endif
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-psycopg/
	${INSTALL_DATA} ${WRKSRC}/doc/examples/* \
		${PREFIX}/share/examples/py-psycopg/
	${CHOWN} ${LIBOWN}:${LIBGRP} ${PREFIX}/lib/python${MODPY_VERSION}/lib-dynload/psycopgmodule.so

.include <bsd.port.mk>
