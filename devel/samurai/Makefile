# $OpenBSD: Makefile,v 1.2 2018/12/28 16:35:51 bcallah Exp $

COMMENT =	ninja-compatible build tool written in C

V =		0.5
DISTNAME =	samurai-$V
CATEGORIES =	devel

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

HOMEPAGE =	https://github.com/michaelforney/samurai

# ISC + Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MASTER_SITES =	https://github.com/michaelforney/samurai/releases/download/$V/

ALL_TARGET =	samu

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/samu ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/samu.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
