V =		1.1.4
COMMENT =	utility to run CP/M-80 programs under Unix
DISTNAME =	tnylpo-${V}
CATEGORIES =	emulators

HOMEPAGE =	https://gitlab.com/gbrein/tnylpo
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c curses

MASTER_SITES =	https://gitlab.com/gbrein/tnylpo/-/archive/${V}/

USE_GMAKE =	Yes
MAKE_FILE =	makefile
MAKE_FLAGS =	CC="${CC}" FLAGS="${CFLAGS}"

NO_TEST =	Yes

# No install routine
# Taken from the FreeBSD port
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tnylpo{,-convert} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tnylpo{,-convert}.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/tnylpo
	${INSTALL_DATA} ${WRKSRC}/mine/{README.md,mine.com,mine.conf} \
		${PREFIX}/share/tnylpo

.include <bsd.port.mk>
