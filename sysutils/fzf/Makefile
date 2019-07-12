# $OpenBSD: Makefile,v 1.3 2019/07/12 20:49:43 sthen Exp $

COMMENT =	command-line fuzzy finder

DISTNAME =	fzf-0.17.5

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/junegunn/fzf

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += c pthread

MASTER_SITES =	https://deftly.net/

MODULES =	lang/go
MODGO_TYPE =	bin

NO_TEST =	Yes

ALL_TARGET = github.com/junegunn/fzf

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/go/bin/* ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/bin/* ${PREFIX}/bin
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/man/man1/*.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
