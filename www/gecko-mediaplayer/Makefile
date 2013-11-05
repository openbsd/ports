# $OpenBSD: Makefile,v 1.39 2013/11/05 12:59:29 dcoppa Exp $

COMMENT =		gnome-mplayer browser media plugin
V =			1.0.9alpha
DISTNAME =		gecko-mediaplayer-1.0.9a
PKGNAME =		gecko-mediaplayer-${V}
REVISION =		0
CATEGORIES =		www

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

HOMEPAGE =		http://kdekorte.googlepages.com/gecko-mediaplayer/

MASTER_SITES =		https://gecko-mediaplayer.googlecode.com/files/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		curl dbus-1 dbus-glib-1 glib-2.0 gmlib \
			gobject-2.0 m stdc++

MODULES =		devel/gettext

LIB_DEPENDS =		net/curl \
			x11/dbus-glib \
			x11/gmtk>=${V}

BUILD_DEPENDS =		devel/xulrunner/24,-devel
RUN_DEPENDS =		x11/gnome-mplayer>=${V}

USE_GMAKE =		Yes
SHARED_ONLY =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/nspr \
			-I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

CONFIGURE_ARGS =	--with-libcurl \
			--with-plugin-dir=${LOCALBASE}/lib/mozilla/plugins

.include <bsd.port.mk>
