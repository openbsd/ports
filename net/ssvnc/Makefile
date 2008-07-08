# $OpenBSD: Makefile,v 1.2 2008/07/08 15:46:02 sthen Exp $

COMMENT =	enhanced TightVNC client

V =		1.0.20
DISTNAME =	ssvnc_no_windows-$V
PKGNAME =	ssvnc-viewer-$Vp0
CATEGORIES =	net x11

HOMEPAGE =	http://www.karlrunge.com/x11vnc/ssvnc.html

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://www.karlrunge.com/x11vnc/etv/

USE_X11 =	Yes

WRKDIST =	${WRKDIR}/ssvnc
WRKSRC =	${WRKDIST}/src/vnc_unixsrc

CONFIGURE_STYLE = imake

ALL_TARGET =	World
NO_REGRESS =	Yes

WANTLIB +=	X11 Xext c z ICE SM Xaw Xmu Xp Xpm Xt Xau Xdmcp

LIB_DEPENDS =	jpeg.>=62.::graphics/jpeg

PATCH_DIST_ARGS=-p1

do-distpatch:
	cd ${WRKSRC} && ${PATCH} ${PATCH_DIST_ARGS} < \
	    ../patches/tight-vncviewer-full.patch

.include <bsd.port.mk>
