# $OpenBSD: Makefile,v 1.1.1.1 2010/08/08 08:10:05 espie Exp $

MASTER_SITES = ftp://quatramaran.ens.fr/pub/espie/
DISTNAME = video-0
WRKSRC = ${WRKDIR}/video
COMMENT = record and display with video(4)
CATEGORIES = x11 sysutils

# BSD
PERMIT_PACKAGE_FTP = Yes
PERMIT_PACKAGE_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes

NOT_FOR_ARCHS = ${GCC2_ARCHS}
NO_REGRESS = Yes

do-build: 
	cd ${WRKBUILD} && ${CC} -I${X11BASE}/include ${CFLAGS} \
		-o video video.c -L${X11BASE}/lib -lX11 -lXv
	cd ${WRKBUILD} && mandoc video.1 >video.cat1

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/video ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/video.cat1 ${PREFIX}/man/cat1/video.0

WANTLIB = X11 Xv c

.include <bsd.port.mk>
