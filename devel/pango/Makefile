# $OpenBSD: Makefile,v 1.130 2020/07/06 16:05:58 sthen Exp $

COMMENT=		library for layout and rendering of text

GNOME_VERSION=		1.44.7
REVISION=		1
GNOME_PROJECT=		pango

SHARED_LIBS += pango-1.0                 3801.0 # 0.4400.7
SHARED_LIBS += pangoft2-1.0              3801.0 # 0.4400.7
SHARED_LIBS += pangoxft-1.0              3801.0 # 0.4400.7
SHARED_LIBS += pangocairo-1.0            3801.0 # 0.4400.7

CATEGORIES=		devel x11

HOMEPAGE=		https://pango.gnome.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xft Xrender c cairo fontconfig freetype fribidi
WANTLIB += glib-2.0 gobject-2.0 harfbuzz m

COMPILER=		base-clang ports-gcc
MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection

BUILD_DEPENDS=		devel/help2man

LIB_DEPENDS=		devel/glib2 \
			devel/fribidi \
			devel/harfbuzz

TEST_DEPENDS=		fonts/cantarell-fonts

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
