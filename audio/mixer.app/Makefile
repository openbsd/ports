# $OpenBSD: Makefile,v 1.3 2001/03/09 14:28:47 wilfried Exp $

DISTNAME=		Mixer.app-1.5.0
PKGNAME=		${DISTNAME:L}
CATEGORIES=		audio x11 x11/windowmaker
NEED_VERSION=		1.340

HOMEPAGE=		http://www.fukt.hk-r.se/~per/mixer/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

MAKE_FLAGS=		CC=g++

USE_X11=		Yes
CONFIGURE_STYLE=	imake noman

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/GNUstep/Apps/Mixer.app
	${INSTALL_PROGRAM} ${WRKBUILD}/Mixer ${PREFIX}/GNUstep/Apps/Mixer.app
	${INSTALL_MAN} files/Mixer.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
