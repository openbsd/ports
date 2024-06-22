COMMENT =	manage passwords
DISTNAME =	plass-1.0
CATEGORIES =	security
HOMEPAGE =	https://projects.omarpolo.com/plass.html
MAINTAINER =	Omar Polo <op@openbsd.org>

# ISC
PERMIT_PACKAGE = Yes

WANTLIB += c crypto

SITES =		https://ftp.omarpolo.com/

MAKE_FLAGS =	CFLAGS="${CFLAGS}"
FAKE_FLAGS =	PREFIX="${TRUEPREFIX}"

RUN_DEPENDS =	devel/got \
		security/gnupg \
		textproc/p5-Encode-Locale

NO_TEST =	Yes

.include <bsd.port.mk>
