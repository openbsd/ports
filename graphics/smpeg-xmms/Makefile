# $OpenBSD: Makefile,v 1.10 2007/04/06 05:30:50 steven Exp $

COMMENT=	"MPEG and VCD video playback in XMMS"
SHARED_ONLY=	Yes

VERSION=	0.3.5
DISTNAME=	smpeg-xmms-${VERSION}
PKGNAME=	xmms-smpeg-${VERSION}p0
CATEGORIES=	graphics

MAINTAINER=	Wilbern Cobb <wcobb@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		usbhid SDL Xext X11 m

MASTER_SITES=	ftp://ftp.sunet.se/pub/multimedia/xmms/plugins/smpeg-xmms/

LIB_DEPENDS=	xmms.>=2::audio/xmms \
		smpeg.>=1.3::devel/smpeg

USE_X11=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-glib-prefix=${LOCALBASE} \
		--with-gtk-prefix=${LOCALBASE} \
		--with-sdl-prefix=${LOCALBASE} \
		--with-xmms-prefix=${LOCALBASE}

.include <bsd.port.mk>
