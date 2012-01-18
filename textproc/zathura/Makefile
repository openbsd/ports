# $OpenBSD: Makefile,v 1.15 2012/01/18 15:58:32 landry Exp $

COMMENT =		pdf viewer with vi-like keybindings
DISTNAME =		zathura-0.0.8.5

CATEGORIES =		textproc x11

HOMEPAGE =		http://pwmt.org/projects/zathura/

MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@the00z.org>

MODULES =		devel/gettext

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=	GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB +=	Xinerama Xrandr Xrender atk-1.0 c cairo cairo expat
WANTLIB +=	fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB +=	gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m 
WANTLIB +=	pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png poppler
WANTLIB +=	poppler-glib pthread pthread-stubs xcb xcb-render xcb-shm z

MASTER_SITES =	https://pwmt.org/download/

BUILD_DEPENDS =	textproc/py-docutils
LIB_DEPENDS =	devel/atk \
		graphics/gdk-pixbuf2 \
		print/poppler \
		x11/gtk+2

MAKE_FLAGS = 	MANPREFIX=${WRKINST}/${PREFIX}/man CC=${CC}
FAKE_FLAGS =	DESTDIR=''

USE_GMAKE =	Yes
USE_GROFF =	Yes

NO_REGRESS =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/config.mk

.include <bsd.port.mk>

