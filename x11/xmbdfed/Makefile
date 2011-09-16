# $OpenBSD: Makefile,v 1.26 2011/09/16 12:29:18 espie Exp $

COMMENT=	Motif tool for editing X11 bitmap fonts

VERSION=	4.7
DISTNAME=	xmbdfed-${VERSION}
PKGNAME=	${DISTNAME}.1
REVISION=	4
CATEGORIES=	x11 fonts
HOMEPAGE=	http://crl.nmsu.edu/~mleisher/xmbdfed.html

# BSD/Public Domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xmu Xpm Xt c freetype m z Xm

MASTER_SITES=	http://crl.nmsu.edu/~mleisher/
EXTRACT_SUFX=	.tar.bz2
PATCHFILES=	xmbdfed-${VERSION}-patch1

USE_GROFF =	Yes
LIB_DEPENDS+=		x11/openmotif
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/xmbdfed ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/xmbdfed.man ${PREFIX}/man/man1/xmbdfed.1

.include <bsd.port.mk>
