# $OpenBSD: Makefile,v 1.28 2019/08/17 19:08:38 cwen Exp $

COMMENT=	scim input method module for hangul

DISTNAME=	scim-hangul-0.3.2
REVISION=	15

CATEGORIES=	inputmethods korean

HOMEPAGE=	https://sourceforge.net/projects/scim/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo expat
WANTLIB += ffi fontconfig freetype fribidi gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-x11-2.0 hangul harfbuzz iconv intl
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png scim-1.0 scim-gtkutils-1.0 scim-x11utils-1.0 xcb
WANTLIB += xcb-render xcb-shm z

COMPILER=	base-clang ports-gcc

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scim/}

LIB_DEPENDS=	korean/libhangul \
		x11/gtk+2 \
		inputmethods/scim

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-static \
		--disable-skim-support

.include <bsd.port.mk>
