# $OpenBSD: Makefile,v 1.10 2011/06/23 22:50:28 naddy Exp $

COMMENT=	small network calculator

DISTNAME=	ipcalc-1.3
REVISION=	2
CATEGORIES=	net

HOMEPAGE=	http://spootnik.org/ipcalc/

MAINTAINER=	Pierre-Yves Ritschard <pyr@spootnik.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

FAKE_FLAGS=	MANDIR="${PREFIX}/man/man"

NO_REGRESS=	Yes
WANTLIB=	c

.include <bsd.port.mk>
