# $OpenBSD: Makefile,v 1.1.1.1 2015/08/12 16:11:06 feinerer Exp $

COMMENT =		simple disk I/0 latency measuring tool

VERSION =		0.9
DISTNAME =		ioping-${VERSION}

CATEGORIES =		sysutils

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m

GH_ACCOUNT =		koct9i
GH_PROJECT =		ioping
GH_TAGNAME =		v${VERSION}

NO_TEST =		Yes

do-build:
	cd ${WRKSRC} && \
	${CC} ${CFLAGS} -DVERSION=\"${VERSION}\" ioping.c -o ioping ${LDFLAGS} -lm

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ioping ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ioping.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
