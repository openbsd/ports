# $OpenBSD: Makefile,v 1.1.1.1 2012/10/11 17:56:56 ajacoutot Exp $

COMMENT=	pacman clone gone mad

DISTNAME=	pacman-arena-0.15

EXTRACT_SUFX=	.tar.bz2
DISTDATA=	pacman-data-0.0.zip
ONLY_EXTRACT=	${DISTNAME}${EXTRACT_SUFX}
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		${DISTDATA}

WRKDIST=	${WRKDIR}/pacman

CATEGORIES=	games

HOMEPAGE=	http://pacmanarena.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL GLU SDL SDL_mixer SDL_net c m pthread

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pacmanarena/}

BUILD_DEPENDS=	archivers/unzip

LIB_DEPENDS=	devel/sdl-mixer \
		devel/sdl-net

NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pacman
	${INSTALL_PROGRAM} ${WRKBUILD}/pacman ${PREFIX}/bin/pacman-arena
	${LOCALBASE}/bin/unzip ${FULLDISTDIR}/${DISTDATA} \
		-d ${PREFIX}/share/pacman

.include <bsd.port.mk>
