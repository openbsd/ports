# $OpenBSD: Makefile,v 1.3 2018/05/23 13:33:50 abieber Exp $

COMMENT =	fast, efficient and secure backup program

V =		0.9.0
DISTNAME =	restic-${V}

CATEGORIES =	sysutils

HOMEPAGE =	https://restic.net/

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

MASTER_SITES =	https://github.com/restic/restic/releases/download/v${V}/

MODULES =	lang/go
MODGO_TYPE =	bin

NO_TEST =	Yes

do-build:
	cd ${WRKSRC} && ${MODGO_CMD} run -x build.go

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/restic ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/man/*.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
