# $OpenBSD: Makefile,v 1.4 2019/07/12 20:46:06 sthen Exp $

COMMENT =	modern and intuitive terminal-based text editor

V =		1.1.3
DISTNAME =	micro-${V}-src
PKGNAME =	micro-${V}
REVISION =	0

CATEGORIES =	editors
HOMEPAGE =	https://micro-editor.github.io/
MAINTAINER =	Edd Barrett <edd@openbsd.org>

# MIT "Expat" License
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MASTER_SITES =		https://github.com/zyedidia/micro/releases/download/v${V}/

MODULES =		lang/go
MODGO_TYPE =            bin
WRKDIST =		${WRKDIR}/micro

do-build:
	cd ${WRKSRC} && ${MAKE_ENV} ${MAKE} build-quick ${MAKE_FLAGS}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/micro ${PREFIX}/bin

NO_TEST =	Yes

.include <bsd.port.mk>
