# $OpenBSD: Makefile,v 1.2 2010/09/07 14:43:20 edd Exp $

COMMENT =		pdf viewer with vi-like keybindings
DISTNAME =		zathura-0.0.8.1
REVISION =		0

CATEGORIES =		textproc x11

HOMEPAGE =		http://zathura.pwmt.org/

MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@the00z.org>

MODULES =		devel/gettext

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB +=	Xinerama Xrandr Xrender atk-1.0 c cairo cairo expat fontconfig
WANTLIB +=	freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz
WANTLIB +=	gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m 
WANTLIB +=	pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png poppler
WANTLIB +=	poppler-glib pthread pthread-stubs xcb xcb-render
WANTLIB +=	xcb-render-util z

MASTER_SITES =	http://pwmt.org/attachments/download/10/

LIB_DEPENDS =	::print/poppler

MAKE_FLAGS = 	MANPREFIX=${WRKINST}/${PREFIX}/man CC=${CC}
FAKE_FLAGS =	DESTDIR=''

USE_GMAKE =	Yes

NO_REGRESS =	Yes

.include <bsd.port.mk>

