# $OpenBSD: Makefile,v 1.25 2022/01/05 15:32:28 kmos Exp $

ONLY_FOR_ARCHS=	i386 amd64 sparc64

COMMENT=	Yamagi Quake II
N=		yquake2
V=		8.00
PKGNAME=	${N}-${V}
DISTNAME=	quake2-${V}
CATEGORIES=	games

HOMEPAGE=	https://www.yamagi.org/quake2/
MAINTAINER=	Adam Wolk <awolk@openbsd.org>
MASTER_SITES=	https://deponie.yamagi.org/quake2/
EXTRACT_SUFX=	.tar.xz

# GPLv2
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB += GL SDL2 c curl execinfo m openal

# Libraries loaded with dlopen(3)
# Extra: curl.26 openal.4
LIB_DEPENDS=	audio/openal \
		devel/sdl2 \
		net/curl

MAKE_ENV+=	VERBOSE=1
USE_GMAKE=	Yes

MAKE_FLAGS = config WITH_SYSTEMWIDE=yes WITH_SYSTEMDIR=${PREFIX}/share/${N}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/${N}
	${INSTALL_PROGRAM} ${WRKBUILD}/release/{quake2,q2ded} \
	    ${PREFIX}/share/${N}/
	${INSTALL_DATA_DIR} ${PREFIX}/share/${N}/baseq2
	${INSTALL_PROGRAM} ${WRKBUILD}/release/baseq2/game.so \
	    ${PREFIX}/share/${N}/baseq2/
	${INSTALL_DATA_DIR} ${PREFIX}/lib/${N}
	${INSTALL_PROGRAM} ${WRKBUILD}/release/ref_soft.so \
	    ${PREFIX}/share/${N}/
	${INSTALL_PROGRAM} ${WRKBUILD}/release/ref_gl1.so \
	    ${PREFIX}/share/${N}/
	${INSTALL_PROGRAM} ${WRKBUILD}/release/ref_gl3.so \
	    ${PREFIX}/share/${N}/
	${SUBST_CMD} -m 555 -c ${FILESDIR}/quake2.sh ${WRKSRC}/quake2
	${INSTALL_SCRIPT} ${WRKSRC}/quake2 ${PREFIX}/bin/

.include <bsd.port.mk>
