# $OpenBSD: Makefile,v 1.1.1.1 2009/11/08 12:17:18 landry Exp $

COMMENT =	simple webbrowser based on webkit/gtk+

DISTNAME =	surf-0.3
CATEGORIES =	www
HOMEPAGE =	http://surf.suckless.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes
MASTER_SITES =		http://dl.suckless.org/surf/

MODULES =	devel/gettext

LIB_DEPENDS =	webkit-1.0::www/webkit

WANTLIB =	c X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender expat fontconfig \
		freetype m pixman-1 pthread pthread-stubs xcb z \
		atk-1.0 cairo gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
		glib-2.0 glitz gmodule-2.0 gnutls gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 png soup-2.4 xml2

NO_REGRESS =	Yes

.include <bsd.port.mk>
