# $OpenBSD: Makefile,v 1.25 2020/06/09 16:31:35 ajacoutot Exp $

COMMENT =		Othello/Reversi-like game
DISTNAME =		grhino-${V}
V =			0.16.1
REVISION=		9
CATEGORIES =		games
HOMEPAGE =		http://rhino.sourceforge.net/
FIX_EXTRACT_PERMISSIONS=Yes

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE ORBit-2 SM X11 Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2
WANTLIB += atk-1.0 bonobo-2 bonobo-activation bonoboui-2 c cairo
WANTLIB += fontconfig freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-2 gnomecanvas-2
WANTLIB += gnomeui-2 gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += popt z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=rhino/GRhino/${V}/}

MODULES =		x11/gnome

MODGNOME_TOOLS += desktop-file-utils yelp

BUILD_DEPENDS =		devel/gettext,-tools

LIB_DEPENDS =		x11/gnome/libgnomeui

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/desktop/grhino.desktop \
		${PREFIX}/share/applications/

.include <bsd.port.mk>
