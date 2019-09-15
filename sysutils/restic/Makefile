# $OpenBSD: Makefile,v 1.11 2019/09/15 02:04:00 jsing Exp $

COMMENT =	fast, efficient and secure backup program

V =		0.9.5
DISTNAME =	restic-${V}
REVISION =	0

CATEGORIES =	sysutils

HOMEPAGE =	https://restic.net/

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MASTER_SITES =	https://github.com/restic/restic/releases/download/v${V}/

MODULES =	lang/go
MODGO_TYPE =	bin

NO_TEST =	Yes

ALL_TARGET =	github.com/restic/restic

do-build:
	cd ${WRKSRC} && ${MODGO_CMD} build ./cmd/restic/...

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/restic ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/man/*.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
