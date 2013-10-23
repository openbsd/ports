# $OpenBSD: Makefile,v 1.5 2013/10/23 03:22:02 lteo Exp $

COMMENT =		minimal dumb-terminal emulation program

DISTNAME =		picocom-1.7
CATEGORIES =		comms

HOMEPAGE =		https://code.google.com/p/picocom/
MAINTAINER =		Kyle Isom <kyle@tyrfingr.is>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MASTER_SITES =		https://picocom.googlecode.com/files/

MAKE_FLAGS =		CC="${CC}" CFLAGS="${CFLAGS}"
MAKE_ENV =		LDFLAGS="${LDFLAGS}"

NO_TEST =		Yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/picocom.8 ${PREFIX}/man/man8/picocom.8
	${INSTALL_PROGRAM} ${WRKDIST}/picocom ${PREFIX}/bin/picocom


.include <bsd.port.mk>
