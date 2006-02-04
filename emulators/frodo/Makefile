# $OpenBSD: Makefile,v 1.15 2006/02/04 10:15:51 steven Exp $

COMMENT=	"Commodore 64 emulator"

DISTNAME=	FrodoV4_1b.Src
PKGNAME=	frodo-4.1bp2
DISTFILES=	FrodoV4_1b.Src${EXTRACT_SUFX}

CATEGORIES=	emulators games

MAINTAINER=	Marc Espie <espie@openbsd.org>

HOMEPAGE=	http://frodo.cebix.net/

# FreeWare
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
WANTLIB=		X11 Xext c m pthread stdc++ usbhid

CONFIGURE_STYLE=	gnu
USE_X11=		Yes

RUN_DEPENDS=	::x11/tk/8.4
LIB_DEPENDS=	SDL:sdl-*-!no_x11:devel/sdl

WISH=wish8.4
FRODOLIBDIR=${PREFIX}/lib/frodo

CONFIGURE_ENV=		CFLAGS='${CFLAGS} -O3 -D__unix -DX_USE_SHM -fno-exceptions'


MAKE_ENV=WISH=${WISH} FRODOLIBDIR=${FRODOLIBDIR}

MASTER_SITES=	http://frodo.cebix.net/downloads/ \
 ftp://sunsite.unc.edu/pub/micro/commodore/crossplatform/emulators/unix/

WRKDIST=${WRKDIR}/Frodo-4.1b
WRKSRC=${WRKDIST}/Src

post-patch:
	cp ${FILESDIR}/SID_openbsd.i	${WRKSRC}

NO_REGRESS=	Yes

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
