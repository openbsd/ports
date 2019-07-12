# $OpenBSD: Makefile,v 1.28 2019/07/12 20:51:15 sthen Exp $

COMMENT=	GDI+ comptible API

DISTNAME=	libgdiplus-4.2
REVISION=	4

CATEGORIES=	x11 devel

SHARED_LIBS +=	gdiplus	2.0	# .0.0

HOMEPAGE=	http://www.mono-project.com/Libgdiplus

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# GPLv2 and Mozilla Public License 1.1
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xext Xrender cairo exif expat fontconfig freetype
WANTLIB += gif glib-2.0
WANTLIB += iconv intl jpeg m
WANTLIB += pcre pixman-1 png pthread tiff xcb xcb-render
WANTLIB += xcb-shm z

MASTER_SITES=	http://download.mono-project.com/sources/libgdiplus/

LIB_DEPENDS=	devel/gettext,-runtime \
		graphics/cairo \
		graphics/tiff \
		graphics/libexif \
		graphics/giflib

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.69

CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include"

.include <bsd.port.mk>
