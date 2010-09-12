# $OpenBSD: Makefile,v 1.4 2010/09/12 22:41:45 jakemsr Exp $

MASTER_SITES = 	http://www.bsdfrog.org/OpenBSD/distfiles/ \
		ftp://quatramaran.ens.fr/pub/espie/
DISTNAME = 	video-0
REVISION =	1
WRKSRC = 	${WRKDIR}/video
COMMENT = 	record and display with video(4)
CATEGORIES = 	x11 sysutils

NO_REGRESS = 	Yes

WANTLIB = 	X11 Xv c

# BSD
PERMIT_PACKAGE_FTP = 		Yes
PERMIT_PACKAGE_CDROM = 		Yes
PERMIT_DISTFILES_FTP = 		Yes
PERMIT_DISTFILES_CDROM = 	Yes

WRKDIST =	${WRKDIR}/video

do-build:
	cd ${WRKBUILD} && ${CC} -I${X11BASE}/include ${CFLAGS} \
		-o video video.c -L${X11BASE}/lib -lX11 -lXv
	cd ${WRKBUILD} && mandoc video.1 > video.cat1

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/video ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/video.cat1 ${PREFIX}/man/cat1/video.0

.include <bsd.port.mk>
