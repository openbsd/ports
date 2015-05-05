# $OpenBSD: Makefile,v 1.13 2015/05/05 17:00:18 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	scim input method module for anthy

DISTNAME =	scim-anthy-1.2.7

REVISION =	5

CATEGORIES =	inputmethods japanese

HOMEPAGE =	http://scim-imengine.sourceforge.jp/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xxf86vm anthy anthydic atk-1.0 cairo
WANTLIB += drm expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs pthread
WANTLIB += scim-1.0 scim-gtkutils-1.0 scim-x11utils-1.0 stdc++ xcb
WANTLIB += xcb-render xcb-shm z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE_JP:=scim-imengine/37309/}

MODULES =	devel/gettext

LIB_DEPENDS =	inputmethods/anthy \
		inputmethods/scim

LIBTOOL_FLAGS =	--tag=disable-static

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
