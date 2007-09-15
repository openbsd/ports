# $OpenBSD: Makefile,v 1.13 2007/09/15 20:04:23 merdely Exp $

COMMENT=	qt-based window manager

DISTNAME=	qlwm-1.7
CATEGORIES=	x11

HOMEPAGE=	http://qlwm.get.to/
MASTER_SITES=	http://www.netcologne.de/~nc-lindenal/qlwm/

MAINTAINER=	Marc Espie <espie@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c m stdc++

LIBDIR=${PREFIX}/lib/qlwm
DOCDIR=${PREFIX}/share/doc/qlwm

USE_X11=	Yes

MODULES=	x11/qt2

MAKE_FLAGS=INCPATH='-I${X11BASE}/include -I${MODQT_INCDIR}' \
	LFLAGS='-L${X11BASE}/lib -L${MODQT_LIBDIR} -L${LOCALBASE}/lib' \
	MOC=${MODQT_MOC} \
	DEST=${LIBDIR}

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${LIBDIR}/files ${DOCDIR}
	${INSTALL_PROGRAM} ${WRKBUILD}/src/qlwm ${LIBDIR}
	${INSTALL_PROGRAM} ${WRKBUILD}/dclock/dclock ${LIBDIR}
	${INSTALL_PROGRAM} ${WRKBUILD}/mail/biff ${LIBDIR}
	${INSTALL_DATA} ${WRKBUILD}/README ${DOCDIR}
	${INSTALL_MAN} ${WRKBUILD}/qlwm.1 ${PREFIX}/man/man1
.for i in appdefaults background.xpm button_left.xpm \
	button_right.xpm defaults menu.xpm menuconfig winlist.xpm
	${INSTALL_DATA} ${WRKBUILD}/files/$i ${LIBDIR}/files
.endfor
	sed -e s,%PREFIX%,${TRUEPREFIX},g <${FILESDIR}/qlwm >${WRKBUILD}/qlwm
	${INSTALL_SCRIPT} ${WRKBUILD}/qlwm ${PREFIX}/bin

.include <bsd.port.mk>
