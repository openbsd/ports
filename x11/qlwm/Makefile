# $OpenBSD: Makefile,v 1.2 2000/10/20 12:27:06 espie Exp $

DISTNAME=	qlwm-1.7
CATEGORIES=	x11
NEED_VERSION=	1.302

HOMEPAGE=	http://qlwm.get.to/
MASTER_SITES=	http://www.netcologne.de/~nc-lindenal/qlwm/

MAINTAINER=	Marc Espie <espie@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIBDIR=${PREFIX}/lib/qlwm
DOCDIR=${PREFIX}/share/doc/qlwm

LIB_DEPENDS=qt.2.::x11/qt2

MAKE_FLAGS=INCPATH='-I${X11BASE}/include -I${LOCALBASE}/include/X11/qt2' \
	LFLAGS='-L${X11BASE}/lib -L${LOCALBASE}/lib/qt2 -L${LOCALBASE}/lib' \
	MOC=moc2 \
	DEST=${LIBDIR}


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
