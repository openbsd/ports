# $OpenBSD: Makefile,v 1.6 2017/01/10 23:45:49 kirby Exp $

ONLY_FOR_ARCHS=	i386 amd64 sparc64

COMMENT=	Yamagi Quake II
N=		yquake2
V=		6.00
PKGNAME=	${N}-${V}
DISTNAME=	quake2-${V}
REVISION=	0
CATEGORIES=	games

HOMEPAGE=	http://www.yamagi.org/quake2/
MAINTAINER=	Adam Wolk <awolk@openbsd.org>
MASTER_SITES=	http://deponie.yamagi.org/quake2/
EXTRACT_SUFX=	.tar.xz

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += GL SDL2 c m ogg openal pthread vorbis vorbisfile z

LIB_DEPENDS=	audio/libvorbis \
		audio/openal \
		devel/sdl2

MAKE_ENV+=	VERBOSE=1
USE_GMAKE=	Yes

MAKE_FLAGS = config WITH_SYSTEMWIDE=yes WITH_SYSTEMDIR=${PREFIX}/share/${N}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/${N}
	${INSTALL_PROGRAM} ${WRKBUILD}/release/{quake2,q2ded} \
	    ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/${N}/baseq2
	${INSTALL_PROGRAM} ${WRKBUILD}/release/baseq2/game.so \
	    ${PREFIX}/share/${N}/baseq2/

.include <bsd.port.mk>
