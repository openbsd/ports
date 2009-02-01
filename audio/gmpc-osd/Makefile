# $OpenBSD: Makefile,v 1.1.1.1 2009/02/01 10:37:38 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		On Screen Display-notifications, for gmpc

VERSION=		0.17.0
DISTNAME=		gmpc-osd-${VERSION}
CATEGORIES=		audio

HOMEPAGE=		http://gmpcwiki.sarine.nl/index.php?title=Osd

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=musicpd/}

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xt atk-1.0 cairo
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += m mpd pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread xml2 z

MODULES=		devel/gettext
RUN_DEPENDS=		:gmpc->=${VERSION}:audio/gmpc
BUILD_DEPENDS=		${RUN_DEPENDS}
LIB_DEPENDS=		xosd::x11/xosd
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
