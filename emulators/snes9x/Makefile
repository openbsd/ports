# $OpenBSD: Makefile,v 1.8 2006/10/19 00:15:36 sturm Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"emulates the Super Nintendo Entertainment System"

PKGNAME=	snes9x-1.37cp0
DISTNAME=	s9x.linuxc6.137.i386

CATEGORIES=	emulators games
HOMEPAGE=	http://www.snes9x.com

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/zips/

RUN_DEPENDS=	::emulators/fedora/base

USE_X11=	Yes
NO_BUILD=	Yes
NO_REGRESS=	Yes
WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/snes9x
	${INSTALL_PROGRAM} ${WRKSRC}/snes9x ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/CHANGES.TXT ${PREFIX}/share/doc/snes9x
	${INSTALL_DATA} ${WRKSRC}/HARDWARE.TXT ${PREFIX}/share/doc/snes9x
	${INSTALL_DATA} ${WRKSRC}/README.TXT ${PREFIX}/share/doc/snes9x

.include <bsd.port.mk>
