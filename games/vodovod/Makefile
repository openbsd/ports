# $OpenBSD: Makefile,v 1.1.1.1 2007/07/05 16:13:27 simon Exp $

COMMENT=	combine pipes to lead water from the house to the tank

DISTNAME=	vodovod-1.10-src
PKGNAME=	vodovod-1.10
CATEGORIES=	games

HOMEPAGE=	http://home.gna.org/vodovod/

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xext c m pthread stdc++ usbhid

MASTER_SITES=	http://download.gna.org/vodovod/

LIB_DEPENDS=	SDL::devel/sdl \
		SDL_image::devel/sdl-image \
		SDL_mixer::devel/sdl-mixer

USE_X11=	Yes
NO_REGRESS=	Yes

MAKE_ENV+=	DATADIR="${LOCALBASE}/share/vodovod" CC="${CXX}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/vodovod ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/vodovod
	${INSTALL_DATA} ${WRKSRC}/vodovod.rc \
		${PREFIX}/share/vodovod/vodovod.conf
	${INSTALL_DATA_DIR} ${PREFIX}/share/vodovod/data
	${INSTALL_DATA} ${WRKSRC}/data/* ${PREFIX}/share/vodovod/data

.include <bsd.port.mk>
