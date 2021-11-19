# $OpenBSD: Makefile.inc,v 1.1 2021/11/19 10:01:02 sthen Exp $

VERSION?=	1.26.0
DISTNAME=	unit-${VERSION}

CATEGORIES=	www

HOMEPAGE?=	https://unit.nginx.org
MASTER_SITES=	https://unit.nginx.org/download/

MAINTAINER=	Sergey A. Osokin <osa@FreeBSD.org>

# Apache 2.0
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc

CONFIGURE_STYLE=simple

CFLAGS+=	-I${LOCALBASE}/include

CONFIGURE_ARGS=	--prefix=${PREFIX} \
		--ld-opt="-L${LOCALBASE}/lib" \
		--log=${LOCALSTATEDIR}/log/unit/unit.log \
		--mandir=${PREFIX}/man \
		--modules=lib/unit/modules \
		--control=unix:${LOCALSTATEDIR}/run/unit/control.unit.sock \
		--pid=${LOCALSTATEDIR}/run/unit/unit.pid \
		--state=${LOCALSTATEDIR}/db/unit \
		--tmp=${LOCALSTATEDIR}/tmp/unit \
		--openssl \
		--user=_unit \
		--group=_unit

DEBUG_PACKAGES=	${BUILD_PACKAGES}

.if defined(UNIT_MODNAME)
UNIT_SHORTNAME?= ${UNIT_MODNAME}
COMMENT?=	NGINX Unit ${UNIT_MODNAME} module
PKGNAME?=	unit-${UNIT_SHORTNAME}-${VERSION}
FULLPKGNAME?=	unit-${UNIT_SHORTNAME}-${VERSION}
RUN_DEPENDS+=	www/unit/unit=${VERSION}
ALL_TARGET=	${UNIT_MODNAME}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/unit/modules/
	${INSTALL_DATA} ${WRKSRC}/build/${UNIT_MODNAME}.unit.so \
	    ${PREFIX}/lib/unit/modules/
.endif
