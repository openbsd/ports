# $OpenBSD: Makefile,v 1.11 2001/05/22 19:30:16 matt Exp $
# $FreeBSD: Makefile,v 1.10 1999/02/18 16:05:47 steve Exp $

COMMENT=	"display X & Win32 desktops on remote X/Win32/Java displays"

VERSION=	3.3.3r2
PKGNAME=        vnc-${VERSION}
DISTNAME=       ${PKGNAME}_unixsrc
CATEGORIES=	net
NEED_VERSION=	1.402

HOMEPAGE=	http://www.uk.research.att.com/vnc/
MAINTAINER=	Matt Behrens <matt@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   http://www.uk.research.att.com/vnc/dist/
DISTFILES=	${DISTNAME}.tgz ${IGNOREFILES}
IGNOREFILES=	vnc-latest_doc.tgz

CONFIGURE_STYLE=imake

WRKDIST=	${WRKDIR}/vnc_unixsrc
ALL_TARGET=    	World

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/Xvnc/programs/Xserver/Xvnc \
		${PREFIX}/bin/Xvnc
	${INSTALL_PROGRAM} ${WRKSRC}/vncviewer/vncviewer \
		${PREFIX}/bin/vncviewer
	${INSTALL_PROGRAM} ${WRKSRC}/vncpasswd/vncpasswd \
		${PREFIX}/bin/vncpasswd
	sed -e s%/usr/local/vnc/classes%${TRUEPREFIX}/share/vnc/classes% \
		< ${WRKSRC}/vncserver \
		> ${WRKSRC}/vncserver.local
	${INSTALL_SCRIPT} ${WRKSRC}/vncserver.local ${PREFIX}/bin/vncserver
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vnc
	${INSTALL_DATA} ${WRKDIR}/vnc_docs/* ${PREFIX}/share/doc/vnc/
	${INSTALL_DATA_DIR} ${PREFIX}/share/vnc/classes
	${INSTALL_DATA} ${WRKSRC}/classes/* ${PREFIX}/share/vnc/classes/

.include <bsd.port.mk>

