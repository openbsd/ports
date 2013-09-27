# $OpenBSD: Makefile,v 1.9 2013/09/27 17:49:04 ajacoutot Exp $

COMMENT =		Othello/Reversi-like game
DISTNAME =		grhino-${V}
V =			0.16.1
REVISION=		2
CATEGORIES =		games
HOMEPAGE =		http://rhino.sourceforge.net/

MAINTAINER = 		Remi Pointel <remi.pointel@xiri.fr>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE ORBit-2 SM X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0
WANTLIB += bonobo-2 bonobo-activation bonoboui-2 c cairo fontconfig
WANTLIB += freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gnome-2 gnomecanvas-2 gnomeui-2
WANTLIB += gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 popt pthread stdc++ z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=rhino/GRhino/${V}/}

MODULES =		devel/gettext \
			x11/gnome

MODGNOME_TOOLS =	yelp
MODGNOME_DESKTOP_FILE =	yes

LIB_DEPENDS =		x11/gnome/libgnomeui

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/desktop/grhino.desktop \
		${PREFIX}/share/applications/

.include <bsd.port.mk>
