# $OpenBSD: Makefile,v 1.2 2001/07/25 08:52:06 pvalchev Exp $

COMMENT=	"jezzball-style, penguin puzzle game"

DISTNAME=	icebreaker-1.1
CATEGORIES=	games
NEED_VERSION=	1.427
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.mattdm.org/icebreaker/

MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	SDL_mixer.0.0:sdl-mixer-*:devel/sdl-mixer \
		smpeg.1.3:smpeg-*:devel/smpeg

USE_X11=	Yes
USE_GMAKE=	Yes
MAKE_ENV=	prefix="${PREFIX}" \
		highscoredir="/var/games/icebreaker"

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/icebreaker
	${INSTALL_DATA} ${WRKSRC}/*.{wav,bmp} ${PREFIX}/share/icebreaker
	${INSTALL_PROGRAM} ${WRKSRC}/icebreaker ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/icebreaker.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
