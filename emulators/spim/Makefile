# $OpenBSD: Makefile,v 1.9 2005/10/16 18:04:18 sturm Exp $

COMMENT=	"MIPS R2000/R3000 simulator"

V=		7.2.1
DISTNAME=	spim
PKGNAME=	spim-$V
CATEGORIES=	emulators

HOMEPAGE=	http://www.cs.wisc.edu/~larus/spim.html

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# homegrown, to be changed in next release
PERMIT_PACKAGE_CDROM=   "may not sell"
PERMIT_PACKAGE_FTP=     "may not bundle with commercial product"
PERMIT_DISTFILES_CDROM= "may not sell"
PERMIT_DISTFILES_FTP=   "may not bundle with commercial product"
WANTLIB=		ICE SM X11 Xaw Xext Xmu Xp Xpm Xt c m

MASTER_SITES=	http://www.cs.wisc.edu/~larus/SPIM/

DIST_SUBDIR=	${DISTNAME}-$V

BUILD_DEPENDS=	:bison-*:devel/bison

XMKMF=		xmkmf

WRKDIST=	${WRKDIR}/${PKGNAME}

FAKE_FLAGS=	PREFIX="${PREFIX}"

do-build:
	(cd ${WRKSRC}/spim; ./Configure && ${MAKE})
	(cd ${WRKSRC}/xspim; ${XMKMF} && ${MAKE})

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/spim
	${INSTALL_PROGRAM} ${WRKSRC}/spim/spim ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/xspim/xspim ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/CPU/exceptions.s ${PREFIX}/share/spim
	${INSTALL_MAN} ${WRKSRC}/Documentation/spim.man ${PREFIX}/man/man1/spim.1
	${INSTALL_MAN} ${WRKSRC}/Documentation/xspim.man ${PREFIX}/man/man1/xspim.1

.include <bsd.port.mk>
