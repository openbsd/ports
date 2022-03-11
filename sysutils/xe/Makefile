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
