# $OpenBSD: Makefile,v 1.7 2016/10/01 11:54:14 naddy Exp $

COMMENT =		minimal dumb-terminal emulation program

DISTNAME =		picocom-1.7
REVISION =		0
CATEGORIES =		comms

HOMEPAGE =		https://github.com/npat-efault/picocom
MAINTAINER =		Kyle Isom <kyle@tyrfingr.is>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MASTER_SITES =		${MASTER_SITE_GOOGLECODE:=picocom/}

MAKE_FLAGS =		CC="${CC}" CFLAGS="${CFLAGS}"
MAKE_ENV =		LDFLAGS="${LDFLAGS}"

NO_TEST =		Yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/picocom.8 ${PREFIX}/man/man8/picocom.8
	${INSTALL_PROGRAM} ${WRKDIST}/picocom ${PREFIX}/bin/picocom


.include <bsd.port.mk>
