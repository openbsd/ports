# $OpenBSD: Makefile,v 1.5 2019/07/12 20:48:53 sthen Exp $

COMMENT =		client-server p9p devdraw
DISTNAME =		devdrawserver-20120504
CATEGORIES =		plan9
REVISION =		2

MAINTAINER =		Gleydson Soares <gsoares@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE =	Yes

GH_ACCOUNT =		mariusae
GH_PROJECT =		devdrawserver
GH_COMMIT =		9a0cae0970bb9d1990a8b997e519b986f84f5571

WANTLIB += c m pthread util

RUN_DEPENDS =		plan9/plan9port
BUILD_DEPENDS =		plan9/plan9port

NO_TEST =		Yes

PLAN9 =			${PREFIX}/plan9

do-build:
	cd ${WRKSRC} && 9 mk all

do-install:
	${INSTALL_DATA_DIR} ${PLAN9}/bin
	cd ${WRKSRC} && \
	for l in o.*; do \
		${INSTALL_PROGRAM} $$l ${PLAN9}/bin/$$(echo $$l | sed 's|o.||g'); \
	done

.include <bsd.port.mk>
