VERSION?=	1.32.1
DISTNAME=	unit-${VERSION}

CATEGORIES=	www

HOMEPAGE?=	https://unit.nginx.org
SITES=		https://unit.nginx.org/download/

MAINTAINER=	Sergey A. Osokin <osa@FreeBSD.org>

# Apache 2.0
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc

CONFIGURE_STYLE=simple

CFLAGS+=	-I${LOCALBASE}/include

CONFIGURE_ARGS=	--prefix=${PREFIX} \
		--ld-opt="-L${LOCALBASE}/lib" \
		--log=${LOCALSTATEDIR}/log/unit/unit.log \
		--logdir=${LOCALSTATEDIR}/log/unit \
		--mandir=${PREFIX}/man \
		--modulesdir=${PREFIX}/lib/unit/modules \
		--control=unix:${LOCALSTATEDIR}/run/unit/control.unit.sock \
		--pid=${LOCALSTATEDIR}/run/unit/unit.pid \
		--runstatedir=${LOCALSTATEDIR}/run/unit \
		--statedir=${LOCALSTATEDIR}/db/unit \
		--tmpdir=${LOCALSTATEDIR}/tmp/unit \
		--njs \
		--openssl \
		--user=_unit \
		--group=_unit

DEBUG_PACKAGES=	${BUILD_PACKAGES}

.if defined(UNIT_MODNAME)
UNIT_SHORTNAME?= ${UNIT_MODNAME}
COMMENT?=	NGINX Unit ${UNIT_MODNAME} module
PKGNAME?=	unit-${UNIT_SHORTNAME}-${VERSION}
FULLPKGNAME?=	unit-${UNIT_SHORTNAME}-${VERSION}
BUILD_DEPENDS+=	www/unit/unit=${VERSION}
RUN_DEPENDS+=	www/unit/unit=${VERSION}
ALL_TARGET=	${UNIT_MODNAME}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/unit/modules/
	${INSTALL_DATA} ${WRKSRC}/build/lib/unit/modules/${UNIT_MODNAME}.unit.so \
	    ${PREFIX}/lib/unit/modules/
.endif
