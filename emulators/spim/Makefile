# $OpenBSD: Makefile,v 1.4 2003/07/03 06:16:22 sturm Exp $

COMMENT=	"MIPS R2000/R3000 simulator"

DISTNAME=	spim
PKGNAME=	spim-6.5
CATEGORIES=	emulators

HOMEPAGE=	http://www.cs.wisc.edu/~larus/spim.html

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# homegrown, to be changed in next release
PERMIT_PACKAGE_CDROM=   "may not sell"
PERMIT_PACKAGE_FTP=     "may not bundle with commercial product"
PERMIT_DISTFILES_CDROM= "may not sell"
PERMIT_DISTFILES_FTP=   "may not bundle with commercial product"

MASTER_SITES=	http://www.cs.wisc.edu/~larus/SPIM/

CONFIGURE_STYLE= gnu imake
CONFIGURE_SCRIPT= Configure

WRKDIST=	${WRKDIR}/${PKGNAME}

ALL_TARGET=	spim xspim	

REGRESS_DEPENDS=::emulators/spim
REGRESS_TARGET=	test

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
