# $OpenBSD: Makefile,v 1.1.1.1 2001/02/05 18:53:28 wilfried Exp $

DISTNAME=	Mixer.app-1.5.0
PKGNAME=	${DISTNAME:L}
CATEGORIES=	audio x11/windowmaker
NEED_VERSION=	1.340
HOMEPAGE=	http://www.fukt.hk-r.se/~per/mixer/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	imake noman
USE_X11=	Yes

MAKE_FLAGS=	CC=g++

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/GNUstep/Apps/Mixer.app
	${INSTALL_PROGRAM} ${WRKBUILD}/Mixer ${PREFIX}/GNUstep/Apps/Mixer.app
	${INSTALL_MAN} files/Mixer.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
