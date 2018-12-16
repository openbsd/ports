# $OpenBSD: Makefile,v 1.2 2018/12/16 01:05:53 abieber Exp $

COMMENT =	command-line fuzzy finder

DISTNAME =	fzf-0.17.5

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/junegunn/fzf

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

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
