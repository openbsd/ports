# $OpenBSD: Makefile,v 1.37 2010/09/05 22:00:13 sthen Exp $

COMMENT=	front-end to external cd audio rippers and mp3 encoders

DISTNAME=	grip-3.2.0
REVISION=	17
CATEGORIES=	audio

HOMEPAGE=	http://www.nostatic.org/grip/

MAINTAINER=	Steve Shockley <steve.shockley@shockley.net>

# GPL: http://www.nostatic.org/grip/doc/ar01s09.html
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c freetype crypto m X11 ICE Xrender stdc++ SM
WANTLIB += Xcomposite Xdamage dbus-1 gio-2.0 pthread ssl fontconfig z Xau
WANTLIB += Xdmcp expat glitz png gthread-2.0 gnomevfs-2 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gtk-x11-2.0 bonobo-activation art_lgpl_2 bonobo-2
WANTLIB += atk-1.0 gconf-2 bonoboui-2 popt pangoft2-1.0 gnomecanvas-2
WANTLIB += xml2 ORBit-2 pango-1.0 gdk_pixbuf-2.0 gdk-x11-2.0
WANTLIB += gnome-2 cairo pangocairo-1.0 idn Xcursor Xext Xfixes Xi Xinerama
WANTLIB += Xrandr gnome-keyring gailutil pixman-1 pthread-stubs xcb gnomeui-2
WANTLIB += id3.>=3.8 curl.>=3 vte.>=8 cdda_interface cdda_paranoia
WANTLIB += xcb-render xcb-render-util

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=grip/}

MODULES=	devel/gettext

LIB_DEPENDS=	::x11/gnome/libgnomeui \
		::audio/id3lib \
		::net/curl \
		::devel/vte \
		::audio/cdparanoia
RUN_DEPENDS=	::x11/gnome/yelp \
		::audio/vorbis-tools \
		:desktop-file-utils-*:devel/desktop-file-utils

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

USE_LIBTOOL=	Yes
USE_X11=	Yes

.include <bsd.port.mk>
