# $OpenBSD: Makefile,v 1.2 2009/04/14 09:39:50 ajacoutot Exp $

COMMENT =		gnome-mplayer browser media plugin
DISTNAME =		gecko-mediaplayer-0.9.5
PKGNAME =		${DISTNAME}p0
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

MODULES =		devel/gettext

LIB_DEPENDS =		gconf-2::devel/gconf2
BUILD_DEPENDS =		:xulrunner-devel-*:devel/xulrunner,-devel
RUN_DEPENDS =		::x11/gnome-mplayer

USE_X11 =		Yes
USE_LIBTOOL =		Yes
USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include \
				-I${X11BASE}/include \
				-I${LOCALBASE}/xulrunner/include/xpcom -DBSD" \
			LDFLAGS="-L${LOCALBASE}/lib \
				-L${X11BASE}/lib"
CONFIGURE_ARGS =	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gecko-mediaplayer \
			--with-gconf


# don't install schemas configuration, @exec takes care of it
post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/gconftool-2

.include <bsd.port.mk>
