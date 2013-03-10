# $OpenBSD: Makefile,v 1.20 2013/03/10 22:55:03 espie Exp $

COMMENT=		wm-dockapp; sound mixer

DISTNAME=		Mixer.app-1.8.0
PKGNAME=		${DISTNAME:L}
REVISION=		2
CATEGORIES=		audio x11 x11/windowmaker

HOMEPAGE=		http://www.fukt.hk-r.se/~per/mixer/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xext Xpm c m ossaudio stdc++

MASTER_SITES=		${HOMEPAGE}

USE_GROFF =		Yes
NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/GNUstep/Apps/Mixer.app
	${INSTALL_PROGRAM} ${WRKBUILD}/Mixer.app ${PREFIX}/GNUstep/Apps/Mixer.app/Mixer
	${INSTALL_MAN} files/Mixer.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
