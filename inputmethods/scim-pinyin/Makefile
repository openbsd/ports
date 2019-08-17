# $OpenBSD: Makefile,v 1.25 2019/08/17 22:17:14 cwen Exp $

COMMENT=	scim input method module for pinyin

DISTNAME=	scim-pinyin-0.5.91
REVISION=	14

CATEGORIES=	inputmethods chinese

HOMEPAGE=	https://github.com/scim-im/scim-pinyin

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo expat
WANTLIB += ffi fontconfig freetype fribidi gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png scim-1.0
WANTLIB += scim-gtkutils-1.0 scim-x11utils-1.0 xcb xcb-render
WANTLIB += xcb-shm z

COMPILER=	base-clang ports-gcc

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scim/}

LIB_DEPENDS=	x11/gtk+2 \
		inputmethods/scim

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-static \
		--disable-skim-support

.include <bsd.port.mk>
