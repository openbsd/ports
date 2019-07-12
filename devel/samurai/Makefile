# $OpenBSD: Makefile,v 1.4 2019/07/12 20:46:00 sthen Exp $

COMMENT =	ninja-compatible build tool written in C

V =		0.6
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
