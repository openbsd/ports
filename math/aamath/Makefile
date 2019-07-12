# $OpenBSD: Makefile,v 1.20 2019/07/12 20:47:39 sthen Exp $

COMMENT=		ASCII art mathematics

DISTNAME=		aamath-0.3
REVISION =		5
CATEGORIES=		math

HOMEPAGE=		http://fuse.superglue.se/aamath/

MAINTAINER=		Matthias Kilian <kili@openbsd.org>

# GPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://openbsd.dead-parrot.de/distfiles/

WANTLIB += ${COMPILER_LIBCXX} c curses m readline

COMPILER =		base-clang ports-gcc base-gcc

NO_TEST=		Yes
WRKDIST=		${WRKDIR}/aamath
ALL_TARGET=
MAKE_FLAGS=		CXX="${CXX}" LD="${CXX}"

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/aamath ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/aamath.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
