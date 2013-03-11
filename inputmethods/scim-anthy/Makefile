# $OpenBSD: Makefile,v 1.11 2013/03/11 11:12:33 espie Exp $

SHARED_ONLY =	Yes

COMMENT =	scim input method module for anthy

DISTNAME =	scim-anthy-1.2.7

REVISION =	4

CATEGORIES =	inputmethods japanese

HOMEPAGE =	http://scim-imengine.sourceforge.jp/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender anthy anthydic atk-1.0 \
		cairo expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 \
		gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png \
		pthread-stubs scim-1.0 scim-gtkutils-1.0 scim-x11utils-1.0 \
		stdc++ xcb-render xcb z \
		GL Xxf86vm drm ffi xcb-shm

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE_JP:=scim-imengine/37309/}

MODULES =	devel/gettext

LIB_DEPENDS =	inputmethods/anthy \
		inputmethods/scim

USE_LIBTOOL =	Yes
LIBTOOL_FLAGS =	--tag=disable-static

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
