# $OpenBSD: Makefile,v 1.14 2004/12/16 00:31:26 alek Exp $

COMMENT=	"cross-platform remote desktop access"
COMMENT-viewer=	"client for cross-platform remote desktop access"

VERSION=	1.2.7
PKGNAME=        tightvnc-${VERSION}
PKGNAME-viewer=	tightvnc-viewer-${VERSION}
DISTNAME=       ${PKGNAME}_unixsrc
CATEGORIES=	net
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=vnc-tight/}
DISTFILES=	${DISTNAME}.tar.gz

HOMEPAGE=	http://www.tightvnc.org/
MAINTAINER=	Rob Casey <rob@minauros.com>

LIB_DEPENDS=	jpeg.62.::graphics/jpeg

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xaw Xext Xmu Xp Xpm Xt c m z 

EXTRACT_ONLY=	${DISTNAME}.tar.gz
WRKDIST=	${WRKDIR}/vnc_unixsrc

MULTI_PACKAGES= -viewer
SUBPACKAGE?=

CONFIGURE_STYLE=	imake

ALL_TARGET=    	World

NO_REGRESS=	Yes

.if defined(PACKAGING) && empty(SUBPACKAGE)
RUN_DEPENDS+=	::net/tightvnc,-viewer
.endif

DOCUMENTATION=vncserver.man vncpasswd/vncpasswd.man vncconnect/vncconnect.man \
    Xvnc/programs/Xserver/Xvnc.man vncviewer/vncviewer.man

.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* gcc-*
.endif

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

# Go install Java classes
	${INSTALL_DATA_DIR} ${PREFIX}/share/vnc
	cp -R ${WRKSRC}/classes ${PREFIX}/share/vnc
.for i in ${DOCUMENTATION}
	${INSTALL_MAN} ${WRKSRC}/$i ${PREFIX}/man/man1/${i:T:R}.1
.endfor

.include <bsd.port.mk>
