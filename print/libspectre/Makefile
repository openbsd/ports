# $OpenBSD: Makefile,v 1.19 2014/04/21 12:31:26 ajacoutot Exp $

# libgs from ghostscript is only provided on shared libs archs
SHARED_ONLY=	Yes

COMMENT=	library for rendering Postscript documents

DISTNAME=	libspectre-0.2.7
CATEGORIES=	print
REVISION=	4

SHARED_LIBS=	spectre 0.1	# 2.7

HOMEPAGE=	http://libspectre.freedesktop.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xext Xt avahi-client avahi-common crypto
WANTLIB += cups cupsimage dbus-1 freetype gs ijs jbig2dec jpeg
WANTLIB += lcms2 m png pthread ssl tiff xcb z

MASTER_SITES=	${HOMEPAGE}/releases/

MODULES=	devel/gettext

# we want the 'display' device from ghostscript, which is not available
# in the no_x11 FLAVOR
LIB_DEPENDS=	ghostscript-*-!no_x11:print/ghostscript/gnu


CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.ifdef DEBUG
BUILD_DEPENDS+=	graphics/cairo
CONFIGURE_ARGS+=--enable-test
.else
CONFIGURE_ARGS+=--disable-test
.endif

.include <bsd.port.mk>
