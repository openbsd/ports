# $OpenBSD: Makefile,v 1.41 2014/04/29 13:39:54 dcoppa Exp $

COMMENT =		gnome-mplayer browser media plugin
V =			1.0.9
DISTNAME =		gecko-mediaplayer-${V}
EPOCH =			0
CATEGORIES =		www

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

HOMEPAGE =		http://kdekorte.googlepages.com/gecko-mediaplayer/

MASTER_SITES =		https://gecko-mediaplayer.googlecode.com/svn/packages/

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

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.69
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/nspr \
			-I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

CONFIGURE_ARGS =	--with-libcurl \
			--with-plugin-dir=${LOCALBASE}/lib/mozilla/plugins

.include <bsd.port.mk>
