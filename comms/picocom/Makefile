# $OpenBSD: Makefile,v 1.9 2019/07/12 20:43:48 sthen Exp $

COMMENT =		minimal dumb-terminal emulation program

GH_ACCOUNT =		npat-efault
GH_PROJECT =		picocom
GH_TAGNAME =		3.1

CATEGORIES =		comms

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c

MAKE_FLAGS =		CC="${CC}" CFLAGS="${CFLAGS}"
MAKE_ENV =		LDFLAGS="${LDFLAGS}"

NO_TEST =		Yes

do-install:
	${INSTALL_MAN} ${WRKSRC}/picocom.1 ${PREFIX}/man/man1/picocom.1
	${INSTALL_PROGRAM} ${WRKDIST}/picocom ${PREFIX}/bin/picocom

.include <bsd.port.mk>
