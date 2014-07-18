# $OpenBSD: Makefile,v 1.20 2014/07/18 16:00:28 ajacoutot Exp $

COMMENT=	GDI+ comptible API

DISTNAME=	libgdiplus-2.10.9

CATEGORIES=	x11 devel

SHARED_LIBS +=	gdiplus	2.0	# .0.0

HOMEPAGE=	http://www.mono-project.com/Libgdiplus

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# GPLv2 and Mozilla Public License 1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xrender cairo exif expat ffi fontconfig freetype
WANTLIB += gif glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += harfbuzz jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs tiff xcb xcb-render
WANTLIB += xcb-shm z

MASTER_SITES=	http://download.mono-project.com/sources/libgdiplus/
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext


LIB_DEPENDS=	devel/pango \
		graphics/tiff \
		graphics/libexif \
		graphics/giflib

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-pango

.include <bsd.port.mk>
