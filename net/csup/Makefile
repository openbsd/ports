# $OpenBSD: Makefile,v 1.2 2007/09/15 22:36:52 merdely Exp $

COMMENT=	rewrite of the CVSup file updating client in C

VERSION=	20060318
DISTNAME=	csup-snap-${VERSION}
PKGNAME=	csup-${VERSION}
CATEGORIES=	net

HOMEPAGE=	http://mu.org/~mux/csup.html

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.mu.org/~mux/
EXTRACT_SUFX=	.tgz

WANTLIB=	c crypto pthread z

WRKDIST=	${WRKDIR}/csup
FAKE_FLAGS=	BINDIR=${PREFIX}/bin MANDIR=${PREFIX}/man/cat

.include <bsd.port.mk>
