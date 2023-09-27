COMMENT =	execute a command for every argument
DISTNAME =	xe-1.0
CATEGORIES =	sysutils

HOMEPAGE =	https://git.vuxu.org/xe/about/

MAINTAINER =	Evan Silberman <evan@jklol.net>

# CC0
PERMIT_PACKAGE =	Yes

WANTLIB += c

SITES =		https://git.vuxu.org/xe/snapshot/

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS}"

FAKE_FLAGS =	MANDIR="${PREFIX}/man"

TEST_TARGET =	check

.include <bsd.port.mk>
