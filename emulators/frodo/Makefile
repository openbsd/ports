# $OpenBSD: Makefile,v 1.1.1.1 2000/07/07 14:29:51 espie Exp $

DISTNAME=	FrodoV4_1a.Src
PKGNAME=	frodo-4.1a

CATEGORIES=	emulators games

MAINTAINER=	espie@openbsd.org

HOMEPAGE=	http://www.uni-mainz.de/~bauec002/FRMain.html

# FreeWare
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

CONFIGURE_STYLE=	gnu
USE_X11=		Yes

RUN_DEPENDS=	${WISH}::x11/tk/8.3

WISH=wish8.3
FRODOLIBDIR=${PREFIX}/lib/frodo

CONFIGURE_ENV=		CFLAGS='${CFLAGS} -O3 -D__unix -DX_USE_SHM -fno-exceptions'


MAKE_ENV=WISH=${WISH} FRODOLIBDIR=${FRODOLIBDIR}

MASTER_SITES=	http://iphcip1.physik.uni-mainz.de/~cbauer/ \
 ftp://sunsite.unc.edu/pub/micro/commodore/crossplatform/emulators/unix/

MASTER_SITES0=	http://www.tu-harburg.de/~semk2104/dl/
PATCHFILES=	FrodoV4.1a-16bpp-patch.gz:0

WRKDIST=${WRKDIR}/Frodo
WRKSRC=${WRKDIST}/Src


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
