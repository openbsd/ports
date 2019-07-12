# $OpenBSD: Makefile,v 1.3 2019/07/12 20:49:06 sthen Exp $

COMMENT =	a replacement for gpg which can encrypt/sign/verify

DISTNAME =	opmsg-1.78s
EXTRACT_SUFX =	.tgz
REVISION =	0

FIX_EXTRACT_PERMISSIONS = Yes

CATEGORIES =	security

HOMEPAGE =	https://github.com/stealth/opmsg

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto m

MASTER_SITES =		http://stealth.openwall.net/opmsg/

COMPILER =		base-clang ports-clang ports-gcc

WRKDIST =		${WRKDIR}/opmsg
WRKSRC =		${WRKDIST}/src

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/opmsg ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/opmsg
	${INSTALL_DATA} ${WRKDIST}/README.md ${PREFIX}/share/doc/opmsg/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opmsg
	${INSTALL_DATA} ${WRKDIST}/sample.config \
		${PREFIX}/share/examples/opmsg/sample.config

.include <bsd.port.mk>
