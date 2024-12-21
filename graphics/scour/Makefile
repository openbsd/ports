COMMENT =		SVG scrubber
MODPY_DISTV =	0.35
REVISION =		9
CATEGORIES =		graphics
HOMEPAGE =		http://www.codedread.com/scour/

PERMIT_PACKAGE =	Yes

GH_ACCOUNT =		codedread
GH_PROJECT =		scour
GH_TAGNAME =		v${MODPY_DISTV}

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
RUN_DEPENDS =		devel/py-six

do-test:
	@cd ${WRKDIST} && ${MODPY_BIN} testscour.py
	@cd ${WRKDIST} && ${MODPY_BIN} testcss.py

.include <bsd.port.mk>
