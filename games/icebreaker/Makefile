# $OpenBSD: Makefile,v 1.6 2002/03/15 00:29:08 pvalchev Exp $

COMMENT=	"jezzball-style, penguin puzzle game"

DISTNAME=	icebreaker-1.2.1
CATEGORIES=	games
NEED_VERSION=	1.435
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.mattdm.org/icebreaker/

MASTER_SITES=	${HOMEPAGE}1.2.x/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	SDL_mixer::devel/sdl-mixer \
		smpeg.1.3:smpeg-*:devel/smpeg

USE_X11=	Yes
USE_GMAKE=	Yes
NO_REGRESS=	Yes
MAKE_ENV=	prefix="${PREFIX}" \
		highscoredir="/var/games/icebreaker"

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/icebreaker
	${INSTALL_DATA} ${WRKSRC}/*.{wav,bmp} ${PREFIX}/share/icebreaker
	${INSTALL_PROGRAM} -g games -m 2755 ${WRKSRC}/icebreaker ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/icebreaker.6 ${PREFIX}/man/man1

.include <bsd.port.mk>
