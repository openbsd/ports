V =		1.0
COMMENT =	simple dd(1) replacement utility from Sortix
DISTNAME =	rw-portable-${V}
PKGNAME =	rw-${V}
CATEGORIES =	sysutils
REVISION =	0

HOMEPAGE =	https://sortix.org/rw/

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB += c

SITES =		https://sortix.org/rw/release/

FAKE_FLAGS =	DESTDIR= MANDIR="${DESTDIR}${PREFIX}/man"

NO_TEST =	Yes

.include <bsd.port.mk>
