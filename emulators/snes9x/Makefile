# $OpenBSD: Makefile,v 1.1.1.1 2001/05/27 21:10:51 aaron Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	emulates the Super Nintendo Entertainment System

PKGNAME=	snes9x-1.37c
DISTNAME=	s9x.linuxc6.137.i386
NEED_VERSION=	1.364
CATEGORIES=	emulators games
HOMEPAGE=	http://www.snes9x.com

MAINTAINER=	Aaron Campbell <aaron@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/zips/

RUN_DEPENDS=	/emul/linux/lib/libc.so.6::emulators/redhat_base

USE_X11=	Yes
NO_BUILD=	Yes
WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/snes9x
	${INSTALL_PROGRAM} ${WRKSRC}/snes9x ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/CHANGES.TXT ${PREFIX}/share/doc/snes9x
	${INSTALL_DATA} ${WRKSRC}/HARDWARE.TXT ${PREFIX}/share/doc/snes9x
	${INSTALL_DATA} ${WRKSRC}/README.TXT ${PREFIX}/share/doc/snes9x

.include <bsd.port.mk>
