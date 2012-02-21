# $OpenBSD: Makefile,v 1.17 2012/02/21 22:34:19 sthen Exp $

COMMENT =		pdf viewer with vi-like keybindings
DISTNAME =		zathura-0.0.8.5
REVISION =		1

CATEGORIES =		textproc x11

HOMEPAGE =		http://pwmt.org/projects/zathura/

MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@the00z.org>

MODULES =		devel/gettext

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png poppler-glib pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

MASTER_SITES =	https://pwmt.org/download/

BUILD_DEPENDS =	textproc/py-docutils
RUN_DEPENDS =	devel/desktop-file-utils
LIB_DEPENDS =	devel/atk \
		graphics/gdk-pixbuf2 \
		print/poppler \
		x11/gtk+2

MAKE_FLAGS =	MANPREFIX=${WRKINST}/${PREFIX}/man \
		DESKTOPPREFIX=${WRKINST}/${PREFIX}/share/applications \
		CC="${CC}" \
		VERBOSE=1
FAKE_FLAGS =	DESTDIR=''

USE_GMAKE =	Yes
USE_GROFF =	Yes

NO_REGRESS =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/config.mk

.include <bsd.port.mk>

