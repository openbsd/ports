# $OpenBSD: Makefile,v 1.34 2009/11/14 11:28:54 landry Exp $

COMMENT=	front-end to external cd audio rippers and mp3 encoders

DISTNAME=	grip-3.2.0
PKGNAME=	${DISTNAME}p14
CATEGORIES=	audio

HOMEPAGE=	http://www.nostatic.org/grip/

MAINTAINER=	Steve Shockley <steve.shockley@shockley.net>

# GPL: http://www.nostatic.org/grip/doc/ar01s09.html
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c freetype crypto m X11 Xft ICE Xrender stdc++ SM \
			Xcomposite Xdamage dbus-1 gio-2.0 \
			pthread ssl fontconfig z Xau Xdmcp expat \
			glitz png gthread-2.0 gnomevfs-2 glib-2.0 \
			gmodule-2.0 gobject-2.0 gtk-x11-2.0 \
			bonobo-activation art_lgpl_2 bonobo-2 atk-1.0 \
			gconf-2 pangox-1.0 bonoboui-2 popt \
			pangoft2-1.0 gnomecanvas-2 xml2 \
			pangoxft-1.0 ORBit-2 pango-1.0 \
			gdk_pixbuf-2.0 gdk-x11-2.0 gnome-2 \
			cairo pangocairo-1.0 idn \
			Xcursor Xext Xfixes Xi Xinerama Xrandr gnome-keyring \
			gailutil pixman-1 pthread-stubs xcb

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=grip/}

MODULES=	devel/gettext

LIB_DEPENDS=	gnomeui-2::x11/gnome/libgnomeui \
		id3.>=3.8::audio/id3lib \
		curl.>=3::net/curl \
		vte.>=8::devel/vte \
		cdda_interface,cdda_paranoia::audio/cdparanoia
RUN_DEPENDS=	::x11/gnome/yelp \
		::audio/vorbis-tools \
		:desktop-file-utils-*:devel/desktop-file-utils

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

USE_LIBTOOL=	Yes
USE_X11=	Yes

post-configure:
.for lang in de es fr pt_BR
	${LOCALBASE}/bin/iconv -f ISO-8859-1 -t UTF-8 ${WRKSRC}/po/${lang}.po > ${WRKSRC}/po/${lang}.po-fixed
	mv ${WRKSRC}/po/${lang}.po{-fixed,}
.endfor

.include <bsd.port.mk>
