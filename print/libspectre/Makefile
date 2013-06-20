# $OpenBSD: Makefile,v 1.16 2013/06/20 06:54:37 ajacoutot Exp $

# libgs from ghostscript is only provided on shared libs archs
SHARED_ONLY=	Yes

COMMENT=	library for rendering Postscript documents

DISTNAME=	libspectre-0.2.7
CATEGORIES=	print
REVISION=	1

SHARED_LIBS=	spectre 0.1	# 2.7

HOMEPAGE=	http://libspectre.freedesktop.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xext Xt asn1 crypto cups cupsimage freetype
WANTLIB += gs gssapi ijs jbig2dec jpeg krb5 lcms2 m png ssl tiff
WANTLIB += avahi-client avahi-common com_err dbus-1 heimbase
WANTLIB += pthread roken wind xcb z

MASTER_SITES=	${HOMEPAGE}/releases/

MODULES=	devel/gettext

# we want the 'display' device from ghostscript, which is not available
# in the no_x11 FLAVOR
LIB_DEPENDS=	ghostscript-*-!no_x11:print/ghostscript/gnu


CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -pthread"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.ifdef DEBUG
BUILD_DEPENDS+=	graphics/cairo
CONFIGURE_ARGS+=--enable-test
.else
CONFIGURE_ARGS+=--disable-test
.endif

.include <bsd.port.mk>
