# $OpenBSD: Makefile,v 1.11 2013/10/11 23:50:02 naddy Exp $

COMMENT=		ASCII art mathematics

DISTNAME=		aamath-0.3
REVISION=		0
CATEGORIES=		math

HOMEPAGE=		http://fuse.superglue.se/aamath/

MAINTAINER=		Matthias Kilian <kili@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://openbsd.dead-parrot.de/distfiles/

WANTLIB=		c m stdc++ termcap readline

NO_TEST=		Yes
WRKDIST=		${WRKDIR}/aamath
ALL_TARGET=
MAKE_FLAGS=		CXX="${CXX}"

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/aamath ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/aamath.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
