# $OpenBSD: Makefile,v 1.15 2002/11/23 14:27:28 wilfried Exp $

COMMENT=		'wm-dockapp; shows rotating 3d-object and CPU load'

DISTNAME=		wmcube-0.98
CATEGORIES=		sysutils x11 x11/windowmaker

HOMEPAGE=		http://kling.mine.nu/kling/wmcube.htm

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://kling.mine.nu/kling/files/

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
