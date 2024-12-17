COMMENT =	simple file watcher utility for OpenBSD

GH_ACCOUNT =	peterhajdu
GH_PROJECT =	fwa
GH_TAGNAME =	0.2

CATEGORIES =	sysutils

MAINTAINER =	Peter Hajdu <peter@hajdu.im>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c

FAKE_FLAGS =	DESTDIR=""
MAKE_FLAGS =	CFLAGS="${CFLAGS}" CC="${CC}"

.include <bsd.port.mk>
