COMMENT =		inetd program to blackhole IPs connecting to it
V =			1.1.2
DISTNAME =		iblock-${V}

CATEGORIES =		net

HOMEPAGE =		https://tildegit.org/solene/iblock/

# BSD 2-clause
PERMIT_PACKAGE =	Yes

# uses pledge()
# uses unveil()
WANTLIB +=		c

SITES =			https://tildegit.org/solene/iblock/archive/

DISTFILES =		iblock-{}${V}${EXTRACT_SUFX}
WRKSRC =		${WRKDIR}/iblock

MAKE_FLAGS =		CC="${CC}"

# XXX: until it is updated to respect CFLAGS
do-build:
	cd ${WRKSRC} && ${CC} ${CFLAGS} -o iblock main.c

.include <bsd.port.mk>
