COMMENT =		SUPress stdout / stderr UNless ERror

DISTNAME =		supuner-0.2
CATEGORIES =		sysutils

HOMEPAGE =		http://tratt.net/laurie/src/supuner/

MAINTAINER =		Laurence Tratt <laurie@tratt.net>

# BSD / MIT
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${HOMEPAGE}releases/

EXTRACT_SUFX =		.tgz

MODULES =		lang/python
CONFIGURE_STYLE =	none

NO_BUILD =		Yes

MODPY_BUILDDEP =	No
MODPY_RUNDEP =		No
TEST_DEPENDS =		${MODPY_RUN_DEPENDS}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test.py

.include <bsd.port.mk>
