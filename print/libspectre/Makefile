# $OpenBSD: Makefile,v 1.30 2019/07/12 20:48:55 sthen Exp $

# libgs from ghostscript is only provided on shared libs archs

COMMENT=	library for rendering Postscript documents

DISTNAME=	libspectre-0.2.8
CATEGORIES=	print
REVISION=	3

SHARED_LIBS +=  spectre              0.1      # 2.8

HOMEPAGE=	http://libspectre.freedesktop.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xext Xt avahi-client avahi-common cups cupsimage
WANTLIB += dbus-1 ffi freetype gmp gnutls gs hogweed iconv idn2
WANTLIB += ijs intl jbig2dec jpeg lcms2 m nettle p11-kit png pthread
WANTLIB += tasn1 tiff unistring xcb z

MASTER_SITES=	${HOMEPAGE}/releases/

# we want the 'display' device from ghostscript, which is not available
# in the no_x11 FLAVOR
LIB_DEPENDS=	devel/gettext,-runtime \
		ghostscript-*-!no_x11:print/ghostscript/gnu


CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.69
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.ifdef DEBUG
BUILD_DEPENDS+=	graphics/cairo
CONFIGURE_ARGS+=--enable-test
.else
CONFIGURE_ARGS+=--disable-test
.endif

.include <bsd.port.mk>
