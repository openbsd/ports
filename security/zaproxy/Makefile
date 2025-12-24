COMMENT =		web application security tool

VERSION =		2.17.0
DISTNAME =		ZAP_${VERSION}_Linux
PKGNAME =		zaproxy-${VERSION}

CATEGORIES =		security

HOMEPAGE =		https://www.zaproxy.org/

# Apache v2.0 License
PERMIT_PACKAGE =	Yes

SITES =	https://github.com/zaproxy/zaproxy/releases/download/v${VERSION}/

MODULES =               java
MODJAVA_VER =           17+

RUN_DEPENDS =		java/javaPathHelper

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/ZAP_${VERSION}

SUBST_VARS +=		VERSION

do-install:
	cp -r ${WRKDIST} ${PREFIX}/share/zaproxy
	${SUBST_PROGRAM} ${FILESDIR}/zaproxy.sh ${PREFIX}/bin/zaproxy

.include <bsd.port.mk>
