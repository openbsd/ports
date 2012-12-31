# $OpenBSD: Makefile,v 1.1.1.1 2012/12/31 08:43:14 bentley Exp $

COMMENT =		application for notetaking & annotating PDF files
DISTNAME =		xournal-0.4.7
CATEGORIES =		print

HOMEPAGE =		http://xournal.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=xournal/}

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0 c cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gnomecanvas-2 gobject-2.0 gtk-x11-2.0 iconv intl m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += poppler-glib pthread-stubs xcb xcb-render xcb-shm z

LIB_DEPENDS =		x11/gtk+2 \
			print/poppler \
			x11/gnome/libgnomecanvas
RUN_DEPENDS = 		devel/desktop-file-utils

USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	CPPFLAGS=-I${LOCALBASE}/include

INSTALL_TARGET =	install desktop-install

post-install:
	mv ${PREFIX}/share/xournal/html-doc/ ${PREFIX}/share/doc/xournal
	ln -sf ${LOCALBASE}/share/xournal/pixmaps \
		${PREFIX}/share/doc/xournal/pixmaps

.include <bsd.port.mk>
