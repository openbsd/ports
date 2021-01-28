# $OpenBSD: Makefile,v 1.1.1.1 2021/01/28 19:59:02 rsadowski Exp $

COMMENT =	tool for annotating images

V =		0.4.0
PKGNAME =	kimageannotator-${V}

GH_ACCOUNT =	ksnip
GH_PROJECT =	kImageAnnotator
GH_TAGNAME =	v${V}

SHARED_LIBS =	kImageAnnotator	0.0	# 0.4.0

CATEGORIES =	graphics

# LGPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Svg Qt5Widgets X11 m
WANTLIB += kColorPicker

MODULES =		devel/cmake \
			x11/qt5

LIB_DEPENDS =		graphics/kcolorpicker \
			x11/qt5/qtsvg

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=Yes
CONFIGURE_ENV +=	LDFLAGS="-L${X11BASE}/lib"

.include <bsd.port.mk>
