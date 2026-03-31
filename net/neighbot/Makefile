COMMENT =	network neighbor monitoring daemon

V =		0.5.5
DISTNAME =	neighbot-${V}

CATEGORIES =	net

HOMEPAGE =	https://github.com/renaudallard/neighbot
SITES =		https://github.com/renaudallard/neighbot/releases/download/v${V}/

MAINTAINER =	Renaud Allard <renaud@allard.it>

# BSD
PERMIT_PACKAGE =	Yes

# C11
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

# uses pledge() and unveil()
WANTLIB =		c pcap

RUN_DEPENDS =	net/arp-scan,-mac

NO_TEST =	Yes

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS}" PREFIX="${PREFIX}"

ALL_TARGET =	all

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/neighbot ${PREFIX}/sbin/neighbot
	${INSTALL_MAN} ${WRKSRC}/neighbot.8 ${PREFIX}/man/man8/neighbot.8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/neighbot
	${INSTALL_DATA} /dev/null \
		${PREFIX}/share/examples/neighbot/neighbot.csv

.include <bsd.port.mk>
