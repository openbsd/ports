# $OpenBSD: Makefile,v 1.2 2002/03/12 08:52:18 kevlo Exp $

COMMENT=	"MIPS R2000/R3000 simulator"

DISTNAME=	spim
PKGNAME=	spim-6.4
CATEGORIES=	emulators
NEED_VERSION=	1.509

HOMEPAGE=	http://www.cs.wisc.edu/~larus/spim.html

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://www.cs.wisc.edu/~larus/SPIM/

CONFIGURE_STYLE= gnu imake
CONFIGURE_SCRIPT= Configure

WRKDIST=	${WRKDIR}/${PKGNAME}

ALL_TARGET=	spim xspim	

DOCS=	spim.ps cycle.ps

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/spim
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/spim
	${INSTALL_DATA} ${WRKSRC}/trap.handler ${PREFIX}/share/spim
	${INSTALL_PROGRAM} ${WRKSRC}/spim ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/xspim ${PREFIX}/bin
	cd ${WRKSRC}/Documentation; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/spim
	${INSTALL_MAN} ${WRKSRC}/spim.man ${PREFIX}/man/man1/spim.1
	${INSTALL_MAN} ${WRKSRC}/xspim.man ${PREFIX}/man/man1/xspim.1

.include <bsd.port.mk>
