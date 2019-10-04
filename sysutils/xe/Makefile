# $OpenBSD: Makefile,v 1.1.1.1 2019/10/04 10:30:38 bentley Exp $

COMMENT =	execute a command for every argument
DISTNAME =	xe-0.11
CATEGORIES =	sysutils

HOMEPAGE =	https://git.vuxu.org/xe/

MAINTAINER =	Evan Silberman <evan@jklol.net>

# CC0
PERMIT_PACKAGE =	Yes

WANTLIB += c

MASTER_SITES =	https://git.vuxu.org/xe/snapshot/

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS}"

FAKE_FLAGS =	MANDIR="${PREFIX}/man"

TEST_TARGET =	check

.include <bsd.port.mk>
