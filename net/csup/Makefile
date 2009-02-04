# $OpenBSD: Makefile,v 1.3 2009/02/04 20:24:01 naddy Exp $

COMMENT=	network distribution package for CVS repositories

VERSION=	20090105
DISTNAME=	csup-snap-${VERSION}
PKGNAME=	csup-${VERSION}
CATEGORIES=	net

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://shell.uugrn.org/~naddy/
EXTRACT_SUFX=	.tgz

WANTLIB=	c crypto pthread z

WRKDIST=	${WRKDIR}/csup
FAKE_FLAGS=	BINDIR=${PREFIX}/bin MANDIR=${PREFIX}/man/cat

.include <bsd.port.mk>
