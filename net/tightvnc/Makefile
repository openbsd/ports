# $OpenBSD: Makefile,v 1.7 2002/12/29 21:30:57 fgsch Exp $

COMMENT=	"cross-platform remote desktop access"
COMMENT-viewer=	"client for cross-platform remote desktop access"

VERSION=	1.2.3
PKGNAME=        tightvnc-${VERSION}
DISTNAME=       ${PKGNAME}_unixsrc
CATEGORIES=	net
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=vnc-tight/}
MASTER_SITES0=	http://www.uk.research.att.com/vnc/dist/
DOCDIST=	vnc-latest_doc.tgz
DISTFILES=	${DISTNAME}.tar.gz ${DOCDIST}:0

HOMEPAGE=	http://www.tightvnc.org/
MAINTAINER=	Rob Casey <rob@minauros.com>

LIB_DEPENDS=	jpeg.62.::graphics/jpeg

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_ONLY=	${DISTNAME}.tar.gz
WRKDIST=	${WRKDIR}/vnc_unixsrc
IGNOREFILES=	${DOCDIST}

MULTI_PACKAGES= -viewer
SUBPACKAGE?=

CONFIGURE_STYLE=	imake

ALL_TARGET=    	World

NO_REGRESS=	Yes

DOCUMENTATION=vncpasswd/vncpasswd.man vncconnect/vncconnect.man \
    Xvnc/programs/Xserver/Xvnc.man vncviewer/vncviewer.man

# We have to frob a few things, and we want our own permissions, so it's easier
# to do the install ourselves.
post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/Xvnc/programs/Xserver/Xvnc ${PREFIX}/bin/Xvnc
	${INSTALL_PROGRAM} ${WRKSRC}/vncviewer/vncviewer ${PREFIX}/bin/vncviewer
	${INSTALL_PROGRAM} ${WRKSRC}/vncpasswd/vncpasswd ${PREFIX}/bin/vncpasswd
	${INSTALL_PROGRAM} ${WRKSRC}/vncconnect/vncconnect ${PREFIX}/bin/vncconnect
	sed  -e s%/usr/local/vnc/classes%${TRUEPREFIX}/share/vnc/classes% \
		< ${WRKSRC}/vncserver \
		> ${WRKSRC}/vncserver.local
	${INSTALL_SCRIPT} ${WRKSRC}/vncserver.local ${PREFIX}/bin/vncserver
# The documentation comes with bogus ownerships; this is a little leaky security-wise
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vnc
	tar -C ${PREFIX}/share/doc/vnc -xzf ${DISTDIR}/${DOCDIST}
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/vnc
# Go install Java classes
	${INSTALL_DATA_DIR} ${PREFIX}/share/vnc
	cp -R ${WRKSRC}/classes ${PREFIX}/share/vnc
.for i in ${DOCUMENTATION}
	${INSTALL_MAN} ${WRKSRC}/$i ${PREFIX}/man/man1/${i:T:R}.1
.endfor

.include <bsd.port.mk>
