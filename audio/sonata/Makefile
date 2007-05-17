# $OpenBSD: Makefile,v 1.1.1.1 2007/05/17 21:27:37 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	"elegant music player for MPD"

DISTNAME=	sonata-1.1
CATEGORIES=	audio

HOMEPAGE=	http://sonata.berlios.de/
MAINTAINER=	Dmitri Alenitchev <dma@dma.org.ru>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender atk-1.0 cairo expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 png z

MASTER_SITES=	${MASTER_SITE_BERLIOS:=sonata/}

MODULES=	devel/gettext \
		lang/python

BUILD_DEPENDS=	::x11/py-gtk2
RUN_DEPENDS=	::devel/py-SOAPpy \
		::x11/py-gtk2

USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
