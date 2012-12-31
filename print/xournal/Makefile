# $OpenBSD: Makefile,v 1.2 2012/12/31 09:00:07 ajacoutot Exp $

COMMENT =		application for notetaking & annotating PDF files
DISTNAME =		xournal-0.4.7
CATEGORIES =		print
REVISION =		0

HOMEPAGE =		http://xournal.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=xournal/}

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender art_lgpl_2 atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gnomecanvas-2 gobject-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png poppler-glib pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

MODULES =		devel/gettext

LIB_DEPENDS =		print/poppler \
			x11/gnome/libgnomecanvas
RUN_DEPENDS = 		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+2,-guic

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

INSTALL_TARGET =	install desktop-install

post-install:
	mv ${PREFIX}/share/xournal/html-doc/ ${PREFIX}/share/doc/xournal
	ln -sf ${LOCALBASE}/share/xournal/pixmaps \
		${PREFIX}/share/doc/xournal/pixmaps

.include <bsd.port.mk>
