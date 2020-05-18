# $OpenBSD: Makefile,v 1.5 2020/05/18 15:42:09 ajacoutot Exp $

COMMENT =	multiplatform vector graphics editor

VERSION =	2.0rc3
DISTNAME =	sk1-${VERSION}
REVISION =	2

CATEGORIES =	graphics

HOMEPAGE =	https://sk1project.net/

# GPLv3+
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://downloads.sk1project.net/sk1/${VERSION}/

MODULES =	lang/python
MODPY_SETUP =	setup-sk1.py

WANTLIB += MagickCore-6.Q16 MagickWand-6.Q16 cairo fribidi glib-2.0
WANTLIB += gobject-2.0 intl lcms2 pango-1.0 pangocairo-1.0 pthread
WANTLIB += ${MODPY_WANTLIB}

BUILD_DEPENDS +=	graphics/py-cairo

LIB_DEPENDS +=		devel/pango \
			graphics/ImageMagick \
			graphics/cairo \
			graphics/lcms2

RUN_DEPENDS +=		devel/desktop-file-utils \
			x11/gtk+3,-guic \
			graphics/py-Pillow \
			graphics/py-cairo \
			print/py-reportlab \
			x11/py-wxPython \
			x11/wxWidgets

# no more python2 support in py-cups, sk1 should move to python3
#RUN_DEPENDS +=		print/py-cups

MAKE_ENV =	APP_INSTALL_PATH=${MODPY_SITEPKG}

pre-build:
	${SUBST_CMD} ${WRKSRC}/setup-sk1.py
	${SUBST_CMD} ${WRKSRC}/setup.cfg_sk1
	${SUBST_CMD} ${WRKSRC}/src/uc2/utils/fs.py

.include <bsd.port.mk>
