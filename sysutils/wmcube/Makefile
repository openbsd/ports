# $OpenBSD: Makefile,v 1.5 2001/03/09 14:28:51 wilfried Exp $

DISTNAME=		wmcube-0.98
CATEGORIES=		sysutils x11 x11/windowmaker
NEED_VERSION=		1.340

HOMEPAGE=		http://boombox.campus.luth.se/projects.php

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://boombox.campus.luth.se/files/

USE_X11=		Yes

MAKE_FILE=		Makefile.OPENBSD
WRKDIST=		${WRKDIR}/wmcube
WRKSRC=			${WRKDIST}/wmcube

BINGRP=			kmem
BINMODE=		2555

3D_OBJECTS=		${PREFIX}/share/wmcube

post-install:
	${INSTALL_DATA_DIR} ${3D_OBJECTS}
	${INSTALL_DATA} ${WRKDIST}/3dObjects/* ${3D_OBJECTS}

.include <bsd.port.mk>
