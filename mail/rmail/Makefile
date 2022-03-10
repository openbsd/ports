COMMENT =		forward mail received via UUCP to the local MTA

DISTNAME =		rmail-1.0
REVISION =		0

CATEGORIES =		mail

MAINTAINER =		Jeremie Courreges-Anglas <jca@wxcvbn.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c

MASTER_SITES =		http://wxcvbn.org/~jca/distfiles/

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MAKE_FLAGS =		BINDIR="${PREFIX}/bin" \
			MANDIR="${PREFIX}/man/man"

NO_TEST =		Yes

.include <bsd.port.mk>
