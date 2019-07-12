# $OpenBSD: Makefile,v 1.31 2019/07/12 20:46:08 sthen Exp $

COMMENT=	Commodore 64 emulator

DISTNAME=	FrodoV4_1b.Src
PKGNAME=	frodo-4.1b
REVISION=	10
DISTFILES=	FrodoV4_1b.Src${EXTRACT_SUFX}

CATEGORIES=	emulators games

MAINTAINER=	Marc Espie <espie@openbsd.org>

HOMEPAGE=	http://frodo.cebix.net/

# FreeWare
PERMIT_PACKAGE=	Yes

WANTLIB=		SDL c m pthread sndio ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

CONFIGURE_STYLE=	gnu

MODULES=	x11/tk
RUN_DEPENDS=	${MODTK_RUN_DEPENDS}
LIB_DEPENDS=	sdl-*-!no_x11:devel/sdl

WISH=		${MODTK_BIN}
FRODOLIBDIR=	${PREFIX}/lib/frodo

CONFIGURE_ENV=		CFLAGS='${CFLAGS} -D__unix -DX_USE_SHM -DUSE_SNDIO -fno-exceptions' \
			LIBS='-lsndio'


MAKE_ENV=WISH=${WISH} FRODOLIBDIR=${FRODOLIBDIR}

MASTER_SITES=	http://frodo.cebix.net/downloads/ \
 ftp://sunsite.unc.edu/pub/micro/commodore/crossplatform/emulators/unix/

WRKDIST=${WRKDIR}/Frodo-4.1b
WRKSRC=${WRKDIST}/Src

post-patch:
	cp ${FILESDIR}/SID_sndio.i	${WRKSRC}

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/Frodo ${PREFIX}/bin/frodo
	${INSTALL_PROGRAM} ${WRKDIST}/FrodoSC ${PREFIX}/bin/frodoSC
	${INSTALL_PROGRAM} ${WRKDIST}/FrodoPC ${PREFIX}/bin/frodoPC
	${INSTALL_DATA_DIR} ${FRODOLIBDIR}/64prgs
	${INSTALL_DATA} ${WRKDIST}/{1541,Basic,Char,Kernal}\ ROM \
		${FRODOLIBDIR}
	${INSTALL_DATA} "${WRKDIST}/Frodo Logo" ${FRODOLIBDIR}
	${INSTALL_SCRIPT} "${WRKDIST}/TkGui.tcl" ${FRODOLIBDIR}
	@cd ${WRKDIST}/64prgs; tar cf - . | \
		(cd ${FRODOLIBDIR}/64prgs; tar xf -)

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/frodo
	${INSTALL_DATA} ${WRKDIST}/CHANGES ${PREFIX}/share/doc/frodo
	cd ${WRKDIST}/Docs; tar cf - . | \
		(cd ${PREFIX}/share/doc/frodo; tar xf -)

.include <bsd.port.mk>
