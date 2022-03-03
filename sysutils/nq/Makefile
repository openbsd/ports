COMMENT =	command line queue utility

GH_ACCOUNT =	leahneukirchen
GH_PROJECT =	nq
GH_TAGNAME =	v0.4

CATEGORIES =	sysutils

MAINTAINER =	Omar Polo <op@omarpolo.com>

# Public domain
PERMIT_PACKAGE = Yes

WANTLIB = c

MAKE_FLAGS =	CC=${CC} \
		CFLAGS="${CFLAGS}"
FAKE_FLAGS =	MANDIR=${PREFIX}/man

TEST_TARGET =	check

.include <bsd.port.mk>
