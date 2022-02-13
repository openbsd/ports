# $OpenBSD: Makefile,v 1.33 2022/02/13 08:52:26 ajacoutot Exp $

# libgs from ghostscript is only provided on shared libs archs

COMMENT=	library for rendering Postscript documents

DISTNAME=	libspectre-0.2.10

CATEGORIES=	print

SHARED_LIBS +=  spectre              1.0      # 2.10

HOMEPAGE=	http://libspectre.freedesktop.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xext Xt avahi-client avahi-common cups dbus-1
WANTLIB += execinfo expat fontconfig freetype gmp gnutls gs hogweed
WANTLIB += iconv idn idn2 ijs intl jbig2dec jpeg lzma m nettle
WANTLIB += openjp2 p11-kit paper png pthread tasn1 tiff unistring
WANTLIB += xcb z zstd

MASTER_SITES=	http://libspectre.freedesktop.org/releases/

# we want the 'display' device from ghostscript, which is not available
# in the no_x11 FLAVOR
LIB_DEPENDS=	devel/gettext,-runtime \
		ghostscript-*-!no_x11:print/ghostscript/gnu

CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.ifdef DEBUG
BUILD_DEPENDS+=	graphics/cairo
CONFIGURE_ARGS+=--enable-test
.else
CONFIGURE_ARGS+=--disable-test
.endif

DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>
