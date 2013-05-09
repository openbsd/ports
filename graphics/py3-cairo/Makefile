# $OpenBSD: Makefile,v 1.3 2013/05/09 12:30:29 ajacoutot Exp $

COMMENT=	cairo bindings for Python

VERSION=	1.10.0
DISTNAME=	pycairo-${VERSION}
PKGNAME=	py3-cairo-${VERSION}
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	graphics

HOMEPAGE=	http://cairographics.org/pycairo/

# LGPLv2.1 / MPL 1.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://cairographics.org/releases/

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += GL X11 Xau Xdamage Xdmcp Xext Xfixes Xrender Xxf86vm
WANTLIB += cairo drm expat fontconfig freetype glib-2.0 gobject-2.0
WANTLIB += m pcre pixman-1 png pthread-stubs util xcb xcb-render
WANTLIB += xcb-shm z

MODULES=	lang/python \
		devel/gettext

MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}

LIB_DEPENDS=	${MODPY_LIB_DEPENDS} \
		graphics/cairo

TEST_DEPENDS=devel/py-test${MODPY_FLAVOR}

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
	cd ${WRKSRC}/test && py.test${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
