# $OpenBSD: Makefile,v 1.9 2010/11/24 12:12:01 edd Exp $

COMMENT =		pdf viewer with vi-like keybindings
DISTNAME =		zathura-0.0.8.2

CATEGORIES =		textproc x11

HOMEPAGE =		http://zathura.pwmt.org/

MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@the00z.org>

MODULES =		devel/gettext

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=	GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB +=	Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo cairo drm expat
WANTLIB +=	fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB +=	gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m 
WANTLIB +=	pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png poppler
WANTLIB +=	poppler-glib pthread pthread-stubs xcb xcb-render xcb-shm z

MASTER_SITES =	http://pwmt.org/attachments/download/31/

LIB_DEPENDS =	print/poppler

MAKE_FLAGS = 	MANPREFIX=${WRKINST}/${PREFIX}/man CC=${CC}
FAKE_FLAGS =	DESTDIR=''

USE_GMAKE =	Yes
USE_GROFF =	Yes

NO_REGRESS =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/config.mk

.include <bsd.port.mk>

