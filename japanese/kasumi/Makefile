# $OpenBSD: Makefile,v 1.15 2016/06/05 11:02:25 sthen Exp $

COMMENT =	personal dictionary manager for anthy

DISTNAME =	kasumi-2.5

REVISION =	5

CATEGORIES =	japanese

HOMEPAGE =	https://osdn.jp/projects/kasumi/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender anthy anthydic atk-1.0 c cairo expat
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs stdc++ xcb xcb-render xcb-shm
WANTLIB += z

MASTER_SITES =	${MASTER_SITE_OSDN_JP:=kasumi/41436/}

MODULES =	devel/gettext

RUN_DEPENDS =	devel/desktop-file-utils
LIB_DEPENDS =	inputmethods/anthy \
		x11/gtk+2

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
