# $OpenBSD: Makefile,v 1.5 2001/03/21 13:45:26 wilfried Exp $

DISTNAME=		Mixer.app-1.6.0
PKGNAME=		${DISTNAME:L}
CATEGORIES=		audio x11 x11/windowmaker
NEED_VERSION=		1.340

HOMEPAGE=		http://www.fukt.hk-r.se/~per/mixer/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE} \
			ftp://ftp.darenet.dk/mirrors/mirror.linuxberg.com/files/x11/dock/ \
			ftp://ftp.netis.com/pub/mirrors2/linuxberg/files/x11/dock/

USE_X11=		Yes

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/GNUstep/Apps/Mixer.app
	${INSTALL_PROGRAM} ${WRKBUILD}/Mixer.app ${PREFIX}/GNUstep/Apps/Mixer.app/Mixer
	${INSTALL_MAN} files/Mixer.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
