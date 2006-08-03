# $OpenBSD: Makefile,v 1.16 2006/08/03 23:15:58 espie Exp $

COMMENT=	"cross-platform remote desktop access"
COMMENT-viewer=	"client for cross-platform remote desktop access"

VERSION=	1.2.9
PKGNAME=	tightvnc-${VERSION}
PKGNAME-viewer=	tightvnc-viewer-${VERSION}
DISTNAME=	tightvnc-${VERSION}_unixsrc
CATEGORIES=	net

HOMEPAGE=	http://www.tightvnc.org/

MAINTAINER=	Rob Casey <rob@minauros.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c z 

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=vnc-tight/}

LIB_DEPENDS=	jpeg.>=62.::graphics/jpeg
USE_X11=	Yes

WRKDIST=	${WRKDIR}/vnc_unixsrc

MULTI_PACKAGES=	-viewer
SUBPACKAGE?=

CONFIGURE_STYLE=imake

ALL_TARGET=	World

NO_REGRESS=	Yes

.if defined(PACKAGING)
.  if ${SUBPACKAGE} == "-viewer"
WANTLIB+=	ICE SM Xaw Xmu Xp Xpm Xt 
.  else
RUN_DEPENDS=	:tightvnc-viewer-${VERSION}:net/tightvnc,-viewer
LIB_DEPENDS=
WANTLIB+=	m
.  endif
.endif

DOCUMENTATION=	vncserver.man vncpasswd/vncpasswd.man vncconnect/vncconnect.man \
		Xvnc/programs/Xserver/Xvnc.man vncviewer/vncviewer.man

.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* gcc-*
.endif

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/Xvnc/programs/Xserver/Xvnc ${PREFIX}/bin/Xvnc
	${INSTALL_PROGRAM} ${WRKSRC}/vncviewer/vncviewer ${PREFIX}/bin/vncviewer
	${INSTALL_PROGRAM} ${WRKSRC}/vncpasswd/vncpasswd ${PREFIX}/bin/vncpasswd
	${INSTALL_PROGRAM} ${WRKSRC}/vncconnect/vncconnect ${PREFIX}/bin/vncconnect
	sed  -e s%/usr/local/vnc/classes%${TRUEPREFIX}/share/vnc/classes% \
		< ${WRKSRC}/vncserver \
		> ${WRKSRC}/vncserver.local
	${INSTALL_SCRIPT} ${WRKSRC}/vncserver.local ${PREFIX}/bin/vncserver

	${INSTALL_DATA_DIR} ${PREFIX}/share/vnc
	${INSTALL_DATA_DIR} ${PREFIX}/share/vnc/classes
	${INSTALL_DATA} ${WRKSRC}/classes/* ${PREFIX}/share/vnc/classes
.for i in ${DOCUMENTATION}
	${INSTALL_MAN} ${WRKSRC}/$i ${PREFIX}/man/man1/${i:T:R}.1
.endfor

.include <bsd.port.mk>
