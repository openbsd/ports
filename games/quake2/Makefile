# $OpenBSD: Makefile,v 1.3 2007/05/15 21:40:01 martynas Exp $

ONLY_FOR_ARCHS= 	i386
SHARED_ONLY=		Yes

COMMENT=		"first person shooter"

DISTNAME=		quake2-0.3
PKGNAME=		${DISTNAME}p0
CATEGORIES=		games

HOMEPAGE=		http://www.quakeforge.net/
MAINTAINER=		Claudio Jeker <claudio@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xxf86dga Xxf86vm c m ossaudio pthread \
			usbhid

MASTER_SITES=		http://www.quakeforge.net/files/quake2forge/

LIB_DEPENDS=		SDL::devel/sdl

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_LIBTOOL=		Yes
LIBTOOL_FLAGS=		--tag=disable-static
CONFIGURE_STYLE=	gnu
NO_REGRESS=		Yes

CFLAGS+=                -pthread -g

.include <bsd.port.mk>
