# $OpenBSD: Makefile,v 1.12 2019/07/12 20:46:21 sthen Exp $

COMMENT=	game like Deflektor (C64) / Mindbender (Amiga)
DISTNAME=	mirrormagic-3.0.0
CATEGORIES=	games x11

HOMEPAGE=	https://www.artsoft.org/mirrormagic/

# GPLv2 only
PERMIT_PACKAGE=	Yes

WANTLIB += SDL2 SDL2_image SDL2_mixer SDL2_net c m

MASTER_SITES=	https://www.artsoft.org/RELEASES/unix/mirrormagic/

LIB_DEPENDS=	devel/sdl2-image \
		devel/sdl2-mixer \
		devel/sdl2-net

NO_TEST=	Yes
USE_GMAKE=	Yes
ALL_TARGET=	sdl2
MAKE_FLAGS=	OPTIONS="${CFLAGS}"

# Upstream left from .orig files behind.
post-extract:
	@rm -f ${WRKSRC}/levels/Classic_Games/classic_mindbender/*.orig

# Upstream named the binary incorrectly.
do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/rocksndiamonds \
		${PREFIX}/bin/mirrormagic
	${INSTALL_DATA_DIR} ${PREFIX}/share/mirrormagic
	@cp -R ${WRKSRC}/{graphics,levels,music,sounds} \
		${PREFIX}/share/mirrormagic
	@chmod a+r \
		${PREFIX}/share/mirrormagic/music/mus_{classic,mirrormagic}/mod.*

.include <bsd.port.mk>
