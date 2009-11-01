# $OpenBSD: Makefile,v 1.8 2009/11/01 18:25:21 landry Exp $

COMMENT =		gnome-mplayer browser media plugin
V =			0.9.8
DISTNAME =		gecko-mediaplayer-$V
CATEGORIES =		www

MAINTAINER =		David Coppa <dcoppa@gmail.com>

HOMEPAGE =		http://kdekorte.googlepages.com/gecko-mediaplayer

MASTER_SITES =		http://gecko-mediaplayer.googlecode.com/files/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		ORBit-2 dbus-1 dbus-glib-1 glib-2.0 gmodule-2.0 \
			gobject-2.0 gthread-2.0

MODULES =		devel/gettext \
			devel/gconf2

BUILD_DEPENDS =		:xulrunner-devel->=1.9:devel/xulrunner/1.9,-devel
RUN_DEPENDS =		:gnome-mplayer->=$V:x11/gnome-mplayer

USE_X11 =		Yes
USE_LIBTOOL =		Yes
USE_GMAKE =		Yes
MODGCONF2_SCHEMAS_DIR =	gecko-mediaplayer

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include \
			-I${X11BASE}/include \
			-I${LOCALBASE}/xulrunner1.9/include \
			-I${LOCALBASE}/xulrunner1.9/include/java \
			-I${LOCALBASE}/xulrunner1.9/include/plugin -DOPENBSD \
			-I${LOCALBASE}/xulrunner1.9/include/pref" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

CONFIGURE_ARGS =	--with-gconf

.include <bsd.port.mk>
