# $OpenBSD: Makefile,v 1.7 2020/03/30 20:02:42 bcallah Exp $

COMMENT =	ninja-compatible build tool written in C

V =		1.1
DISTNAME =	samurai-$V
CATEGORIES =	devel

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

HOMEPAGE =	https://github.com/michaelforney/samurai

# ISC + Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c

MASTER_SITES =	https://github.com/michaelforney/samurai/releases/download/$V/

ALL_TARGET =	samu

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/samu ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/samu.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
