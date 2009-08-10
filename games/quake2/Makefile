# $OpenBSD: Makefile,v 1.14 2009/08/10 06:31:42 kili Exp $

ONLY_FOR_ARCHS= 	amd64 i386
SHARED_ONLY=		Yes

COMMENT=		first person shooter

DISTNAME=		quake2-0.3
PKGNAME=		${DISTNAME}p9
CATEGORIES=		games

HOMEPAGE=		http://www.quakeforge.net/
MAINTAINER=		Claudio Jeker <claudio@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ICE GL SM X11 Xau Xdmcp Xext Xrandr Xrender Xxf86dga \
			Xxf86vm c m ossaudio pthread pthread-stubs sndio \
			usbhid xcb

MASTER_SITES=		http://humppa.nl/distfiles/

MODULES=		converters/libiconv
LIB_DEPENDS=		SDL::devel/sdl

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_LIBTOOL=		Yes
LIBTOOL_FLAGS=		--tag=disable-static
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-opengl=${X11BASE}
NO_REGRESS=		Yes

CFLAGS+=                -pthread -g

.include <bsd.port.mk>
