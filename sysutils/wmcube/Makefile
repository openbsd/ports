# $OpenBSD: Makefile,v 1.2 2001/01/17 16:13:30 naddy Exp $

DISTNAME=	wmcube-0.98
CATEGORIES=	sysutils x11
NEED_VERSION=	1.340
MASTER_SITES=	http://boombox.campus.luth.se/files/
HOMEPAGE=	http://boombox.campus.luth.se/projects.php

MAINTAINER=	Peter Stromberg <home@wilfried.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
WRKDIST=	${WRKDIR}/wmcube
WRKSRC=		${WRKDIST}/wmcube

MAKE_FILE=	Makefile.OPENBSD

BINGRP=		kmem
BINMODE=	2555

3D_OBJECTS=	${PREFIX}/share/wmcube

post-install:
	${INSTALL_DATA_DIR} ${3D_OBJECTS}
	${INSTALL_DATA} ${WRKDIST}/3dObjects/* ${3D_OBJECTS}

.include <bsd.port.mk>
