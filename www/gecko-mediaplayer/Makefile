# $OpenBSD: Makefile,v 1.32 2012/09/24 06:51:59 jasper Exp $

COMMENT =		gnome-mplayer browser media plugin
V =			1.0.6
DISTNAME =		gecko-mediaplayer-${V}
REVISION =		0
CATEGORIES =		www

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

HOMEPAGE =		http://kdekorte.googlepages.com/gecko-mediaplayer/

MASTER_SITES =		http://gecko-mediaplayer.googlecode.com/files/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += curl dbus-1 dbus-glib-1 glib-2.0 gmlib gobject-2.0
WANTLIB += m stdc++

MODULES =		devel/gettext

LIB_DEPENDS =		net/curl \
			x11/dbus-glib \
			x11/gmtk>=${V}

BUILD_DEPENDS =		devel/xulrunner/1.9,-devel>=1.9.2
RUN_DEPENDS =		x11/gnome-mplayer>=${V}

USE_LIBTOOL =		Yes
USE_GMAKE =		Yes
SHARED_ONLY =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/nspr \
			-I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

CONFIGURE_ARGS =	--with-libcurl \
			--with-xulrunner-sdk=${LOCALBASE}/xulrunner1.9 \
			--with-plugin-dir=${LOCALBASE}/lib/mozilla/plugins

.include <bsd.port.mk>
