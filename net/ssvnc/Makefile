# $OpenBSD: Makefile,v 1.3 2008/07/10 21:25:55 sthen Exp $

COMMENT =	enhanced TightVNC client

V =		1.0.20
DISTNAME =	ssvnc_unixsrc_only-$V
PKGNAME =	ssvnc-viewer-$Vp1
CATEGORIES =	net x11

HOMEPAGE =	http://www.karlrunge.com/x11vnc/ssvnc.html

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

# 1.0.20 distfile is not yet final; mirrored for now from
# http://www.karlrunge.com/x11vnc/etv/ssvnc_no_windows-1.0.20.tar.gz
# Repacked with non-Unix binaries removed to save space.
MASTER_SITES =	http://spacehopper.org/mirrors/

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
