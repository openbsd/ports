# libgs from ghostscript is only provided on shared libs archs

COMMENT=	library for rendering Postscript documents

DISTNAME=	libspectre-0.2.10
REVISION=	0

CATEGORIES=	print

SHARED_LIBS +=  spectre              1.0      # 2.10

HOMEPAGE=	http://libspectre.freedesktop.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB =  ICE SM X11 Xext Xt avahi-client avahi-common brotlidec
WANTLIB += brotlienc cups dbus-1 execinfo expat fontconfig freetype gmp
WANTLIB += gnutls gs hogweed iconv idn idn2 ijs intl jbig2dec jpeg lzma
WANTLIB += m nettle openjp2 p11-kit paper png pthread tasn1 tiff
WANTLIB += unistring xcb z zstd

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
