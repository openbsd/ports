# $OpenBSD: Makefile,v 1.10 2020/02/22 00:14:21 jca Exp $

COMMENT =		web application security tool

VERSION =		2.9.0
DISTNAME =		ZAP_${VERSION}_Linux
PKGNAME =		zaproxy-${VERSION}

CATEGORIES =		security

HOMEPAGE =		https://www.owasp.org/index.php/ZAP

# Apache v2.0 License
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://github.com/zaproxy/zaproxy/releases/download/v${VERSION}/

MODULES =               java
MODJAVA_VER =           1.8+

RUN_DEPENDS =		java/javaPathHelper

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/ZAP_${VERSION}

SUBST_VARS +=		VERSION

do-install:
	cp -r ${WRKDIST} ${PREFIX}/share/zaproxy
	${SUBST_PROGRAM} ${FILESDIR}/zaproxy.sh ${PREFIX}/bin/zaproxy

.include <bsd.port.mk>
