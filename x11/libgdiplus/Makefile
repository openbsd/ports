# $OpenBSD: Makefile,v 1.18 2013/06/04 18:41:59 naddy Exp $

COMMENT=	GDI+ comptible API

DISTNAME=	libgdiplus-2.10
REVISION=	0

CATEGORIES=	x11 devel

SHARED_LIBS +=	gdiplus	1.0	# .0.0

HOMEPAGE=	http://www.mono-project.com/Libgdiplus

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# GPLv2 and Mozilla Public License 1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xdmcp Xrender cairo expat fontconfig freetype
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 jpeg m pcre
WANTLIB += pixman-1 png pthread-stubs xcb z exif ungif
WANTLIB += gthread-2.0 xcb-render pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 tiff
WANTLIB += GL Xdamage Xext Xfixes Xxf86vm drm xcb-shm

MASTER_SITES=	ftp://ftp.novell.com/pub/mono/sources/libgdiplus/
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext


LIB_DEPENDS=	devel/pango \
		graphics/tiff \
		graphics/libexif \
		graphics/libungif

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-pango

.include <bsd.port.mk>
