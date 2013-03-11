# $OpenBSD: Makefile,v 1.7 2013/03/11 11:07:39 espie Exp $

COMMENT =		Othello/Reversi-like game
DISTNAME =		grhino-${V}
V =			0.16.1
REVISION=		0
CATEGORIES =		games
HOMEPAGE =		http://rhino.sourceforge.net/

MAINTAINER = 		Remi Pointel <remi.pointel@xiri.fr>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=rhino/GRhino/${V}/}

MODULES =		devel/gettext

BUILD_DEPENDS =		textproc/rarian
RUN_DEPENDS =		x11/gnome/yelp
LIB_DEPENDS =		x11/gnome/libgnomeui

WANTLIB += art_lgpl_2 bonobo-2 bonobo-activation bonoboui-2 gnome-2
WANTLIB += gnome-keyring gnomecanvas-2 gnomeui-2 gnomevfs-2 popt
WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB += dbus-1 expat fontconfig freetype gailutil gconf-2 gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread pthread-stubs stdc++
WANTLIB += xcb xcb-render xcb-render-util xml2 z

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST =		Yes

.include <bsd.port.mk>
