# $OpenBSD: Makefile,v 1.14 2009/08/10 06:29:52 kili Exp $

COMMENT=		wm-dockapp; sound mixer

DISTNAME=		Mixer.app-1.8.0
PKGNAME=		${DISTNAME:L}p0
CATEGORIES=		audio x11 x11/windowmaker

HOMEPAGE=		http://www.fukt.hk-r.se/~per/mixer/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c m ossaudio stdc++ pthread-stubs xcb

MASTER_SITES=		${HOMEPAGE}

USE_X11=		Yes
NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/GNUstep/Apps/Mixer.app
	${INSTALL_PROGRAM} ${WRKBUILD}/Mixer.app ${PREFIX}/GNUstep/Apps/Mixer.app/Mixer
	${INSTALL_MAN} files/Mixer.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
