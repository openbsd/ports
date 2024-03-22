COMMENT =		SUPress stdout / stderr UNless ERror

DISTNAME =		supuner-0.3
CATEGORIES =		sysutils

HOMEPAGE =		http://tratt.net/laurie/src/supuner/

MAINTAINER =		Laurence Tratt <laurie@tratt.net>

# BSD / MIT
PERMIT_PACKAGE =	Yes

SITES =			${HOMEPAGE}releases/

MODULES =		lang/python
CONFIGURE_STYLE =	none

NO_BUILD =		Yes
MAKE_FLAGS = 		PREFIX=/usr/local
USE_GMAKE =		Yes

MODPY_BUILDDEP =	No
MODPY_RUNDEP =		No
TEST_DEPENDS =		${MODPY_RUN_DEPENDS}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test.py

.include <bsd.port.mk>
