# $OpenBSD: Makefile,v 1.4 2010/07/24 11:44:17 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	scim input method module for hangul

DISTNAME=	scim-hangul-0.3.2
REVISION=	2

CATEGORIES=	inputmethods korean

HOMEPAGE=	http://www.scim-im.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png stdc++ z \
		gio-2.0 pthread-stubs xcb hangul gtk-x11-2.0 \
		gdk-x11-2.0 gdk_pixbuf-2.0 scim-1.0 scim-gtkutils-1.0 \
		scim-x11utils-1.0 gthread-2.0 xcb-render xcb-render-util

MODULES=	devel/gettext

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scim/}

LIB_DEPENDS=	::korean/libhangul \
		::x11/gtk+2 \
		::inputmethods/scim

USE_X11=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--disable-skim-support

.include <bsd.port.mk>
