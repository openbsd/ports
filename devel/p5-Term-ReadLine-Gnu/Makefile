COMMENT =	GNU Readline Library Wrapper Module

DISTNAME =	Term-ReadLine-Gnu-1.47

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c curses perl readline

MODULES =		cpan

TEST_ENV =		TERM=${TERM}

.include <bsd.own.mk>
PORTS_PRIVSEP ?=
.if ${PORTS_PRIVSEP:L} == "yes"
TEST_ENV +=		DISPLAY=
.else
TEST_DEPENDS =		x11/p5-Tk
TEST_IS_INTERACTIVE =	x11
.endif

.include <bsd.port.mk>
