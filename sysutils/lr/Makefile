# $OpenBSD: Makefile,v 1.1.1.1 2020/05/24 20:03:35 sthen Exp $

COMMENT =	list files, recursively
DISTNAME =	lr-1.5.1
CATEGORIES =	sysutils

HOMEPAGE =	https://git.vuxu.org/lr/about/

MAINTAINER =	Evan Silberman <evan@jklol.net>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c

MASTER_SITES =	https://git.vuxu.org/lr/snapshot/

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS}"

FAKE_FLAGS =	MANDIR="${PREFIX}/man"

NO_TEST =	Yes

.include <bsd.port.mk>
