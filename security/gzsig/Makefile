# $OpenBSD: Makefile,v 1.1.1.1 2005/05/05 06:24:41 djm Exp $

COMMENT=		"cryptographic signatures for gzip files"

DISTNAME=		gzsig-1.0
CATEGORIES=		security

MAINTAINER=		Damien Miller <djm@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m crypto

MASTER_SITES=		http://monkey.org/~dugsong/

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/gzsig ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/gzsig.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
