# $OpenBSD: Makefile,v 1.4 2002/04/26 04:48:03 wcobb Exp $

COMMENT=	"MPEG and VCD video playback in XMMS"

VERSION=	0.3.5
DISTNAME=	smpeg-xmms-${VERSION}
PKGNAME=	xmms-smpeg-${VERSION}
CATEGORIES=	graphics
NEED_VERSION=	1.525
HOMEPAGE=	http://www.xmms.org/files/plugins/smpeg-xmms/

MAINTAINER=	Wilbern Cobb <wcobb@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE} \
		http://mirror.csoft.org/smpeg-xmms/

LIB_DEPENDS=	xmms.2::audio/xmms \
		smpeg.1.3::devel/smpeg

USE_X11=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-glib-prefix=${LOCALBASE} \
		--with-gtk-prefix=${LOCALBASE} \
		--with-sdl-prefix=${LOCALBASE} \
		--with-xmms-prefix=${LOCALBASE}

.include <bsd.port.mk>
