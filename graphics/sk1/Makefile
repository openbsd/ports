# $OpenBSD: Makefile,v 1.2 2019/01/02 12:44:07 jca Exp $

COMMENT =	multiplatform vector graphics editor

VERSION =	2.0rc3
DISTNAME =	sk1-${VERSION}
REVISION =	0

CATEGORIES =	graphics

HOMEPAGE =	https://sk1project.net/

MAINTAINER =	Elias M. Mariani <marianielias@gmail.com>

# GPLv3+
PERMIT_PACKAGE_CDROM =  Yes

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
			print/py-cups \
			print/py-reportlab \
			x11/py-wxPython \
			x11/wxWidgets

MAKE_ENV =	APP_INSTALL_PATH=${MODPY_SITEPKG}

pre-build:
	${SUBST_CMD} ${WRKSRC}/setup-sk1.py
	${SUBST_CMD} ${WRKSRC}/setup.cfg_sk1
	${SUBST_CMD} ${WRKSRC}/src/uc2/utils/fs.py

.include <bsd.port.mk>
