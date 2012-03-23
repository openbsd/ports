# $OpenBSD: Makefile,v 1.28 2012/03/23 15:23:47 ajacoutot Exp $

COMMENT=	cairo bindings for Python

VERSION=	1.10.0
DISTNAME=	py2cairo-${VERSION}
PKGNAME=	py-cairo-${VERSION}
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	graphics

HOMEPAGE=	http://cairographics.org/pycairo/

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# LGPLv2.1 / MPL 1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://cairographics.org/releases/

WANTLIB += GL X11 Xau Xdamage Xdmcp Xext Xfixes Xrender Xxf86vm
WANTLIB += cairo drm expat fontconfig freetype glib-2.0 gobject-2.0
WANTLIB += m pcre pixman-1 png pthread-stubs python2.7 util xcb
WANTLIB += xcb-render xcb-shm z

MODULES=	lang/python \
		devel/gettext

LIB_DEPENDS=	graphics/cairo
REGRESS_DEPENDS=devel/py-py

USE_LIBTOOL=	Yes

do-configure:
	cd ${WRKSRC} && env PYTHON=${MODPY_BIN} \
		LDFLAGS="$$(python${MODPY_VERSION}-config --libs)" \
		${MODPY_BIN} ./waf configure

do-build:
	cd ${WRKBUILD} && ${MODPY_BIN} ./waf build

do-install:
	cd ${WRKBUILD} && ${MODPY_BIN} ./waf install

do-regress: install
	perl -i -pe "s/python/python${MODPY_VERSION}/g" ${WRKSRC}/test/examples_test.py
	cd ${WRKSRC}/test && py.test

.include <bsd.port.mk>
