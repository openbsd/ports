# $OpenBSD: Makefile,v 1.10 2018/06/29 22:16:19 espie Exp $

COMMENT =		application for notetaking & annotating PDF files
DISTNAME =		xournal-0.4.8
CATEGORIES =		print
REVISION =		3

HOMEPAGE =		http://xournal.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gnomecanvas-2
WANTLIB += gobject-2.0 gtk-x11-2.0 iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 poppler-glib pthread z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=xournal/}


BUILD_DEPENDS =		devel/gettext-tools
LIB_DEPENDS =		print/poppler \
			x11/gnome/libgnomecanvas
RUN_DEPENDS = 		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+3,-guic

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

INSTALL_TARGET =	install desktop-install

post-install:
	mv ${PREFIX}/share/xournal/html-doc/ ${PREFIX}/share/doc/xournal
	ln -sf ${LOCALBASE}/share/xournal/pixmaps \
		${PREFIX}/share/doc/xournal/pixmaps

.include <bsd.port.mk>
