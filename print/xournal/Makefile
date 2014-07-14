# $OpenBSD: Makefile,v 1.5 2014/07/14 20:17:17 edd Exp $

COMMENT =		application for notetaking & annotating PDF files
DISTNAME =		xournal-0.4.8
CATEGORIES =		print

HOMEPAGE =		http://xournal.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=xournal/}

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender art_lgpl_2 atk-1.0 c cairo fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gnomecanvas-2 gobject-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 poppler-glib pthread z

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
