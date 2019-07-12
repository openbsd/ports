# $OpenBSD: Makefile,v 1.10 2019/07/12 20:47:10 sthen Exp $

COMMENT =		SVG scrubber
MODPY_EGG_VERSION =	0.35
REVISION =		3
CATEGORIES =		graphics
HOMEPAGE =		http://www.codedread.com/scour/

PERMIT_PACKAGE =	Yes

GH_ACCOUNT =		codedread
GH_PROJECT =		scour
GH_TAGNAME =		v${MODPY_EGG_VERSION}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}

do-test:
	@cd ${WRKDIST} && ${MODPY_BIN} testscour.py
	@cd ${WRKDIST} && ${MODPY_BIN} testcss.py

.include <bsd.port.mk>
