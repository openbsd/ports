# $OpenBSD: Makefile,v 1.1.1.1 2005/04/06 00:02:00 alek Exp $

COMMENT=		"ASCII art mathematics"

DISTNAME=		aamath-0.1
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

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/aamath ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/aamath.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
