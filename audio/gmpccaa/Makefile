# $OpenBSD: Makefile,v 1.13 2009/01/30 22:52:16 landry Exp $

SHARED_ONLY=	Yes

COMMENT=	Amazon cover art provider for gmpc

VERSION=	0.17.0
DISTNAME=	gmpc-coveramazon-${VERSION}
CATEGORIES=	audio

MAINTAINER=	Landry Breuil <gaston@gcu.info>

HOMEPAGE=	http://gmpcwiki.sarine.nl/index.php?title=Coveramazon

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=musicpd/}

WANTLIB=		X11 Xau Xdmcp Xrender Xrandr atk-1.0 expat fontconfig \
			Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama \
			freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
			gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
			cairo pcre pixman-1 png z

MODULES=		devel/gettext
RUN_DEPENDS=		:gmpc->=${VERSION}:audio/gmpc
BUILD_DEPENDS=		${RUN_DEPENDS}
LIB_DEPENDS=		xml2.>=9::textproc/libxml \
			mpd.>=2::audio/libmpd \
			gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

USE_LIBTOOL=		Yes
USE_X11=		Yes

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
