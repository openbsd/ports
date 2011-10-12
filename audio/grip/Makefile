# $OpenBSD: Makefile,v 1.46 2011/10/12 12:54:30 jasper Exp $

COMMENT=	front-end to external cd audio rippers and mp3 encoders

DISTNAME=	grip-3.2.0
REVISION=	24
CATEGORIES=	audio

HOMEPAGE=	http://www.nostatic.org/grip/

MAINTAINER=	Steve Shockley <steve.shockley@shockley.net>

# GPL: http://www.nostatic.org/grip/doc/ar01s09.html
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE ORBit-2 SM X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0
WANTLIB += bonobo-2 bonobo-activation bonoboui-2 c cairo cdda_interface
WANTLIB += cdda_paranoia crypto curl expat fontconfig freetype
WANTLIB += gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-2 gnomecanvas-2 gnomeui-2 gnomevfs-2
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 id3 idn m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png popt pthread
WANTLIB += pthread-stubs ssl stdc++ vte xcb xcb-render xcb-shm
WANTLIB += z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=grip/}

MODULES=	devel/gettext

BUILD_DEPENDS=	textproc/rarian

LIB_DEPENDS=	x11/gnome/libgnomeui \
		audio/id3lib \
		net/curl \
		devel/vte \
		audio/cdparanoia
RUN_DEPENDS=	x11/gnome/yelp \
		audio/vorbis-tools \
		devel/desktop-file-utils

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

USE_LIBTOOL=	Yes

.include <bsd.port.mk>
