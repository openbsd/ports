# $OpenBSD: Makefile,v 1.24 2015/04/21 18:24:22 sthen Exp $

COMMENT=	MPEG and VCD video playback in XMMS
SHARED_ONLY=	Yes

VERSION=	0.3.5
DISTNAME=	smpeg-xmms-${VERSION}
PKGNAME=	xmms-smpeg-${VERSION}
REVISION =	7
CATEGORIES=	graphics

MAINTAINER=	Wilbern Cobb <wcobb@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += SDL m pthread smpeg sndio usbhid

MASTER_SITES=	ftp://ftp.sunet.se/pub/multimedia/xmms/plugins/smpeg-xmms/

MODULES=	converters/libiconv

LIB_DEPENDS=	audio/xmms \
		devel/smpeg

LIBTOOL_FLAGS=	--tag=disable-static

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-glib-prefix=${LOCALBASE} \
		--with-gtk-prefix=${LOCALBASE} \
		--with-sdl-prefix=${LOCALBASE} \
		--with-xmms-prefix=${LOCALBASE}

.include <bsd.port.mk>
