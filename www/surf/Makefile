# $OpenBSD: Makefile,v 1.11 2011/05/16 08:24:31 ajacoutot Exp $

COMMENT =	simple webbrowser based on webkit/gtk+

DISTNAME =	surf-0.4.1
REVISION=	2
CATEGORIES =	www
HOMEPAGE =	http://surf.suckless.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender expat fontconfig
WANTLIB += freetype m pixman-1 pthread pthread-stubs xcb z
WANTLIB += atk-1.0 cairo gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 pango-1.0 xcb-render
WANTLIB += pangocairo-1.0 pangoft2-1.0 png soup-2.4 xml2
WANTLIB += webkitgtk-1.0 GL Xxf86vm drm xcb-shm

MASTER_SITES =	http://dl.suckless.org/surf/

MODULES =	devel/gettext
USE_GROFF =	Yes

LIB_DEPENDS =	www/webkit>=1.4.0v0
RUN_DEPENDS =	x11/dmenu

NO_REGRESS =	Yes

.include <bsd.port.mk>
