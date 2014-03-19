# $OpenBSD: Makefile,v 1.5 2014/03/19 14:39:41 ajacoutot Exp $

COMMENT=	fast and simple image viewer

DISTNAME=	viewnior-1.4

CATEGORIES=	graphics x11

HOMEPAGE=	http://xsisqox.github.com/Viewnior/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo exiv2 expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs stdc++ xcb xcb-render
WANTLIB += xcb-shm z

# original tarball is hosted on Dropbox
MASTER_SITES=	https://distfiles.bsdfrog.org/

MODULES=	devel/gettext \
		textproc/intltool

LIB_DEPENDS=	graphics/exiv2 \
		x11/gtk+2

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+2,-guic

# locate images using mimetype
BUILD_DEPENDS +=misc/shared-mime-info
RUN_DEPENDS +=	misc/shared-mime-info

USE_GMAKE=	yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-shave

.include <bsd.port.mk>
