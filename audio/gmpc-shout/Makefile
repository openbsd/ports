# $OpenBSD: Makefile,v 1.5 2009/01/30 22:51:39 landry Exp $

SHARED_ONLY=		Yes

COMMENT=		shoutcast support, for gmpc

VERSION=		0.17.0
DISTNAME=		gmpc-shout-${VERSION}
CATEGORIES=		audio

HOMEPAGE=		http://gmpcwiki.sarine.nl/index.php?title=Shout
# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xcomposite Xdamage pcre \
		Xrender atk-1.0 cairo expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gtk-x11-2.0 m mpd pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pixman-1 png xml2 z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=musicpd/}

MODULES=		devel/gettext
#XXX spawns ogg123 at runtime ??
RUN_DEPENDS=		:gmpc->=${VERSION}:audio/gmpc \
			::audio/vorbis-tools

BUILD_DEPENDS=		${RUN_DEPENDS}
USE_LIBTOOL=		Yes
USE_X11=		Yes

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
