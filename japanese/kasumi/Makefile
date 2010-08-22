# $OpenBSD: Makefile,v 1.3 2010/08/22 21:37:29 fgsch Exp $

COMMENT =	personal dictionary manager for anthy

DISTNAME =	kasumi-2.5

REVISION =	1

CATEGORIES =	japanese

HOMEPAGE =	http://kasumi.sourceforge.jp/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes  \
		Xi Xinerama Xrandr Xrender anthy anthydic atk-1.0 \
		c cairo expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 \
		gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread-stubs \
		pthread stdc++ xcb-render-util xcb-render xcb z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE_JP:=kasumi/41436/}

MODULES =	devel/gettext

RUN_DEPENDS =	::devel/desktop-file-utils
LIB_DEPENDS =	::inputmethods/anthy \
		::x11/gtk+2

USE_LIBTOOL =	Yes
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
