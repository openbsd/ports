# $OpenBSD: Makefile,v 1.2 2010/08/20 10:29:11 fgsch Exp $

SHARED_ONLY =	Yes

COMMENT =	scim input method module for anthy

DISTNAME =	scim-anthy-1.2.7

REVISION =	0

CATEGORIES =	inputmethods japanese

HOMEPAGE =	http://scim-imengine.sourceforge.jp/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender anthy.>=1 anthydic.>=1 \
		atk-1.0 cairo expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 \
		gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png \
		pthread-stubs scim-1.0 scim-gtkutils-1.0 scim-x11utils-1.0 \
		stdc++ xcb-render-util xcb-render xcb z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE_JP:=scim-imengine/37309/}

MODULES =	devel/gettext

LIB_DEPENDS =	::inputmethods/anthy \
		::inputmethods/scim

USE_X11 =	Yes
USE_LIBTOOL =	Yes
LIBTOOL_FLAGS =	--tag=disable-static

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
