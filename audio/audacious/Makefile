# $OpenBSD: Makefile,v 1.4 2007/05/21 11:30:26 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"GTK+-2 media player based on BMP and XMMS"

DISTNAME=	audacious-1.3.2
SHARED_LIBS=	audacious	5.0
CATEGORIES=	audio

HOMEPAGE=	http://audacious-media-player.org/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://static.audacious-media-player.org/release/
EXTRACT_SUFX=	.tgz

USE_X11=	Yes
NO_REGRESS=	Yes

MODULES=	devel/gettext

WANTLIB=	X11 Xau Xdmcp Xrender  Xcursor Xext Xfixes Xi Xinerama Xrandr \
		expat fontconfig freetype m z c pthread \
		glib-2.0 gthread-2.0 gmodule-2.0 gobject-2.0 gdk_pixbuf-2.0 \
		gdk-x11-2.0 gtk-x11-2.0 atk-1.0 cairo glitz png \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 stdc++ xml2

LIB_DEPENDS=	glade-2.0.>=0.3::devel/libglade2 \
		mcs::devel/mcs

MAKE_ENV=	LIBaudacious_VERSION=${LIBaudacious_VERSION}

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
