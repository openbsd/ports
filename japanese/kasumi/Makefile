# $OpenBSD: Makefile,v 1.1.1.1 2010/08/19 13:47:55 fgsch Exp $

COMMENT =	personal dictionary manager for anthy

DISTNAME =	kasumi-2.5

CATEGORIES =	japanese

HOMEPAGE =	http://kasumi.sourceforge.jp/

# GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gthread-2.0 intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pixman-1 png pthread pthread-stubs stdc++ xcb xcb-render \
		xcb-render-util z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE_JP:=kasumi/41436/}

MODULES =	devel/gettext

RUN_DEPENDS =	::devel/desktop-file-utils
LIB_DEPENDS =	anthy,anthydic::inputmethods/anthy \
		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

USE_LIBTOOL =	Yes
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
