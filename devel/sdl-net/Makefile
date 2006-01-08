# $OpenBSD: Makefile,v 1.16 2006/01/08 03:02:09 brad Exp $

COMMENT=	"SDL cross-platform networking library"

DISTNAME=	SDL_net-1.2.5
PKGNAME=	${DISTNAME:L:S/_/-/}p0
SHARED_LIBS=	SDL_net 0.5
CATEGORIES=	devel net
MASTER_SITES=	http://www.libsdl.org/projects/SDL_net/release/

HOMEPAGE=	http://www.libsdl.org/projects/SDL_net/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xext usbhid

LIB_DEPENDS=	SDL::devel/sdl

USE_X11=	Yes
USE_LIBTOOL=	Yes

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${X11BASE}/lib"
CONFIGURE_ARGS+=	--disable-gui \
			${CONFIGURE_SHARED}

.include <bsd.port.mk>
