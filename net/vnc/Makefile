# $OpenBSD: Makefile,v 1.14 2002/03/24 21:40:12 matt Exp $
# $FreeBSD: Makefile,v 1.10 1999/02/18 16:05:47 steve Exp $

IGNORE=		"superseded by tightvnc"

COMMENT=	"cross-platform remote desktop access"
COMMENT-viewer=	"client for cross-platform remote desktop access"

VERSION=	3.3.3r2
PKGNAME=        vnc-${VERSION}
PKGNAME-viewer=	vnc-viewer-${VERSION}
DISTNAME=       ${PKGNAME}_unixsrc
CATEGORIES=	net
NEED_VERSION=	1.498

HOMEPAGE=	http://www.uk.research.att.com/vnc/
MAINTAINER=	Matt Behrens <matt@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   http://www.uk.research.att.com/vnc/dist/
DISTFILES=	${DISTNAME}.tgz ${IGNOREFILES}
IGNOREFILES=	vnc-latest_doc.tgz

MULTI_PACKAGES=	-viewer
SUBPACKAGE?=

CONFIGURE_STYLE=imake

WRKDIST=	${WRKDIR}/vnc_unixsrc
ALL_TARGET=    	World

NO_REGRESS=	Yes

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/Xvnc/programs/Xserver/Xvnc \
		${PREFIX}/bin/Xvnc
	${INSTALL_PROGRAM} ${WRKSRC}/vncviewer/vncviewer \
		${PREFIX}/bin/vncviewer
	${INSTALL_PROGRAM} ${WRKSRC}/vncpasswd/vncpasswd \
		${PREFIX}/bin/vncpasswd
	${INSTALL_PROGRAM} ${WRKSRC}/vncconnect/vncconnect \
		${PREFIX}/bin/vncconnect
	sed -e s%/usr/local/vnc/classes%${TRUEPREFIX}/share/vnc/classes% \
		< ${WRKSRC}/vncserver \
		> ${WRKSRC}/vncserver.local
	${INSTALL_SCRIPT} ${WRKSRC}/vncserver.local ${PREFIX}/bin/vncserver
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vnc
	${INSTALL_DATA} ${WRKDIR}/vnc_docs/* ${PREFIX}/share/doc/vnc/
	${INSTALL_DATA_DIR} ${PREFIX}/share/vnc/classes
	${INSTALL_DATA} ${WRKSRC}/classes/* ${PREFIX}/share/vnc/classes/

.include <bsd.port.mk>

