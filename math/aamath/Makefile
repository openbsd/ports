# $OpenBSD: Makefile,v 1.4 2007/09/15 18:44:36 steven Exp $

COMMENT=		ASCII art mathematics

DISTNAME=		aamath-0.3
CATEGORIES=		math

HOMEPAGE=		http://fuse.superglue.se/aamath/

MAINTAINER=		Matthias Kilian <kili@outback.escape.de>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

WANTLIB=		c m stdc++ termcap readline

NO_REGRESS=		Yes
WRKDIST=		${WRKDIR}/aamath
ALL_TARGET=
MAKE_FLAGS=		CXX="${CXX}"

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/aamath ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/aamath.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
