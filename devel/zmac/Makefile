# $OpenBSD: Makefile,v 1.1.1.1 2020/07/03 15:24:22 bcallah Exp $

COMMENT =	Z-80 macro cross assembler
DISTNAME =	zmac-20200607
CATEGORIES =	devel

HOMEPAGE =	http://48k.ca/zmac.html
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Public Domain
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

MASTER_SITES =	https://mirrors.nycbug.org/pub/distfiles/

COMPILER =	base-clang ports-gcc

ALL_TARGET =	zmac

NO_TEST =	Yes

# No install routine.
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/zmac ${PREFIX}/bin

.include <bsd.port.mk>
