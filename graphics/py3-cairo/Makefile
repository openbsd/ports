# $OpenBSD: Makefile,v 1.11 2016/11/06 18:07:54 jca Exp $

# no libGL (toolchain issue)
NOT_FOR_ARCHS=	m88k

COMMENT=	cairo bindings for Python

VERSION=	1.10.0
DISTNAME=	pycairo-${VERSION}
PKGNAME=	py3-cairo-${VERSION}
EXTRACT_SUFX=	.tar.bz2
REVISION=	4

CATEGORIES=	graphics

HOMEPAGE=	http://cairographics.org/pycairo/

# LGPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += X11 Xau Xdmcp Xext Xrender cairo expat fontconfig freetype
WANTLIB += glib-2.0 gobject-2.0 intl m pcre pixman-1 png pthread
WANTLIB += pthread-stubs util xcb xcb-render xcb-shm z

MASTER_SITES=	http://cairographics.org/releases/


MODULES=	lang/python

MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}

LIB_DEPENDS=	${MODPY_LIB_DEPENDS} \
		graphics/cairo

TEST_DEPENDS=devel/py-test${MODPY_FLAVOR}

# du to the fact that waf extract embedded bzip2 tarball unpacked at runtime.
# we need to call waf to create files before patching files.
post-extract:
	cd ${WRKSRC} && ${MODPY_BIN} ./waf --help 1>&2 > /dev/null
	cd ${WRKSRC} && ln -s .waf3-* waf3

do-configure:
	cd ${WRKSRC} && env PYTHON=${MODPY_BIN} \
		LDFLAGS="$$(python${MODPY_VERSION}-config --libs)" \
		${MODPY_BIN} ./waf configure --nopyc --nopyo

do-build:
	cd ${WRKBUILD} && ${MODPY_BIN} ./waf build

do-install:
	cd ${WRKBUILD} && ${MODPY_BIN} ./waf install
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${WRKINST}${MODPY_SITEPKG}

do-test: fake
	sed -i "s/python/python${MODPY_VERSION}/g" ${WRKSRC}/test/examples_test.py
	cd ${WRKSRC} && PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
