# $OpenBSD: Makefile,v 1.1.1.1 2018/06/12 00:10:00 abieber Exp $

COMMENT =	command-line fuzzy finder

DISTNAME =	fzf-0.17.3

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

do-build:
	cd ${WRKSRC} && ${MODGO_CMD} build -x

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/fzf* ${PREFIX}/bin
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/man/man1/*.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
