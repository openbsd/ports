# $OpenBSD: Makefile,v 1.4 2009/06/08 16:58:16 ajacoutot Exp $

COMMENT =		gnome-mplayer browser media plugin
DISTNAME =		gecko-mediaplayer-0.9.5
PKGNAME =		${DISTNAME}p2
CATEGORIES =		www

MAINTAINER =		David Coppa <dcoppa@gmail.com>

HOMEPAGE =		http://kdekorte.googlepages.com/gecko-mediaplayer

MASTER_SITES =		http://gecko-mediaplayer.googlecode.com/files/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		ORBit-2 dbus-1 dbus-glib-1 glib-2.0 gmodule-2.0 gobject-2.0 \
			gthread-2.0

MODULES =		devel/gettext \
			devel/gconf2

BUILD_DEPENDS =		:xulrunner-devel-*:devel/xulrunner,-devel
RUN_DEPENDS =		::x11/gnome-mplayer

USE_X11 =		Yes
USE_LIBTOOL =		Yes
USE_GMAKE =		Yes
MODGCONF2_SCHEMAS_DIR =	gecko-mediaplayer

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include \
				-I${X11BASE}/include \
				-I${LOCALBASE}/xulrunner/include/xpcom -DBSD" \
			LDFLAGS="-L${LOCALBASE}/lib \
				-L${X11BASE}/lib"
CONFIGURE_ARGS =	--with-gconf


# don't install schemas configuration, @exec takes care of it
post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/gconftool-2

.include <bsd.port.mk>
