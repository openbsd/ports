# $OpenBSD: Makefile,v 1.14 2009/08/20 18:58:39 kili Exp $

COMMENT=		very small and pretty fast gdk/Imlib image viewer

DISTNAME=		qiv-2.2.2
CATEGORIES=		graphics

EXTRACT_SUFX=		.tgz

HOMEPAGE=		http://spiegl.de/qiv/

MASTER_SITES=		${HOMEPAGE}download/

LIB_DEPENDS=		magic::devel/libmagic \
			Imlib2::graphics/imlib2 \
			exif::graphics/libexif \
			gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xau Xcomposite Xcursor Xdamage Xdmcp \
			Xext Xfixes Xi Xinerama Xrandr Xrender c \
			cairo expat fontconfig freetype gio-2.0 \
			glib-2.0 glitz gmodule-2.0 gobject-2.0 iconv \
			intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
                        pixman-1 png pthread-stubs xcb z
USE_GMAKE=		Yes
USE_X11=		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
