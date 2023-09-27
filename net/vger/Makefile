COMMENT =		gemini server written in C used with inetd
V =			2.0.1
DISTNAME =		vger-${V}

CATEGORIES =		net

HOMEPAGE =		https://tildegit.org/solene/vger/

MAINTAINER =		Florian Viehweger <openbsd@out-of-creativity.de>

# BSD 2-clause
PERMIT_PACKAGE =	Yes

# uses pledge()
# uses unveil()
WANTLIB +=		c

SITES =			https://tildegit.org/solene/vger/archive/

CFLAGS +=		-std=gnu99

DISTFILES =		vger-{}${V}${EXTRACT_SUFX}
WRKDIST =		${WRKDIR}/vger

.include <bsd.port.mk>
