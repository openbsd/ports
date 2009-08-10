# $OpenBSD: Makefile,v 1.19 2009/08/10 06:34:30 kili Exp $

COMMENT=		wm-dockapp; shows rotating 3d-object and CPU load

DISTNAME=		wmcube-0.98
PKGNAME=		${DISTNAME}p0
CATEGORIES=		sysutils x11 x11/windowmaker

HOMEPAGE=		http://kling.mine.nu/wmcube.htm

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c m pthread-stubs xcb

MASTER_SITES=		http://kling.mine.nu/files/

USE_X11=		Yes
NO_REGRESS=		Yes

MAKE_FILE=		Makefile.OPENBSD
WRKDIST=		${WRKDIR}/wmcube
WRKSRC=			${WRKDIST}/wmcube

3D_OBJECTS=		${PREFIX}/share/wmcube

post-install:
	${INSTALL_DATA_DIR} ${3D_OBJECTS}
	${INSTALL_DATA} ${WRKDIST}/3dObjects/* ${3D_OBJECTS}

.include <bsd.port.mk>
