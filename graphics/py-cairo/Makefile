# $OpenBSD: Makefile,v 1.33 2014/09/16 19:56:10 miod Exp $

# no libGL (toolchain issue)
NOT_FOR_ARCHS= m88k

COMMENT=	cairo bindings for Python

MODPY_EGG_VERSION=1.10.0
DISTNAME=	py2cairo-${MODPY_EGG_VERSION}
PKGNAME=	py-cairo-${MODPY_EGG_VERSION}
EXTRACT_SUFX=	.tar.bz2

REVISION=	1

CATEGORIES=	graphics

HOMEPAGE=	http://cairographics.org/pycairo/

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# LGPLv2.1 / MPL 1.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://cairographics.org/releases/

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += GL X11 Xau Xdamage Xdmcp Xext Xfixes Xrender Xxf86vm
WANTLIB += cairo drm expat fontconfig freetype glib-2.0 gobject-2.0
WANTLIB += m pcre pixman-1 png pthread-stubs util xcb xcb-render
WANTLIB += xcb-shm z pthread

MODULES=	lang/python \
		devel/gettext

LIB_DEPENDS=	${MODPY_LIB_DEPENDS} \
		graphics/cairo

TEST_DEPENDS=devel/py-test

do-configure:
	cd ${WRKSRC} && env PYTHON=${MODPY_BIN} \
		LDFLAGS="$$(python${MODPY_VERSION}-config --libs)" \
		${MODPY_BIN} ./waf configure

do-build:
	cd ${WRKBUILD} && ${MODPY_BIN} ./waf build

do-install:
	cd ${WRKBUILD} && ${MODPY_BIN} ./waf install

do-test: install
	perl -i -pe "s/python/python${MODPY_VERSION}/g" ${WRKSRC}/test/examples_test.py
	cd ${WRKSRC}/test && py.test

.include <bsd.port.mk>
