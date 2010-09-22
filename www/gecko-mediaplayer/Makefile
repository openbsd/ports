# $OpenBSD: Makefile,v 1.13 2010/09/22 15:25:26 dcoppa Exp $

COMMENT =		gnome-mplayer browser media plugin
V =			0.9.9.2
DISTNAME =		gecko-mediaplayer-${V}
REVISION =		3
CATEGORIES =		www

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

HOMEPAGE =		http://kdekorte.googlepages.com/gecko-mediaplayer

MASTER_SITES =		http://gecko-mediaplayer.googlecode.com/files/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		ORBit-2 dbus-1 dbus-glib-1 glib-2.0 gmodule-2.0 \
			gobject-2.0 gthread-2.0 m stdc++

MODULES =		devel/gettext \
			devel/gconf2

BUILD_DEPENDS =		:xulrunner-devel->=1.9.2:devel/xulrunner/1.9,-devel
RUN_DEPENDS =		:gnome-mplayer->=${V}:x11/gnome-mplayer

USE_X11 =		Yes
USE_LIBTOOL =		Yes
USE_GMAKE =		Yes
SHARED_ONLY =		Yes

MODGCONF2_SCHEMAS_DIR =	gecko-mediaplayer

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/nspr \
			-I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

CONFIGURE_ARGS =	--with-gconf \
			--enable-new-libxul \
			--with-xulrunner-sdk=${LOCALBASE}/xulrunner1.9 \
			--with-plugin-dir=${LOCALBASE}/lib/mozilla/plugins

.include <bsd.port.mk>
