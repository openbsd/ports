# $OpenBSD: Makefile,v 1.58 2017/07/26 22:45:15 sthen Exp $

COMMENT=	front-end to external cd audio rippers and mp3 encoders

DISTNAME=	grip-3.3.1
CATEGORIES=	audio
REVISION=	6

HOMEPAGE=	http://sourceforge.net/projects/grip/

MAINTAINER=	Steve Shockley <steve.shockley@shockley.net>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE ORBit-2 SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 bonobo-2
WANTLIB += bonobo-activation bonoboui-2 c cairo cdda_interface
WANTLIB += cdda_paranoia crypto curl fontconfig freetype gconf-2
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-2 gnomecanvas-2 gnomeui-2 gnomevfs-2 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 id3 intl m nghttp2 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 popt pthread ssl ${COMPILER_LIBCXX} vte z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=grip/}

LIB_DEPENDS=	audio/cdparanoia \
		audio/id3lib \
		devel/gettext \
		devel/vte \
		net/curl \
		x11/gnome/libgnomeui

RUN_DEPENDS=	audio/vorbis-tools \
		devel/desktop-file-utils

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# see patch-src_grip_c
post-install:
	rm -rf ${PREFIX}/share/gnome

.include <bsd.port.mk>
