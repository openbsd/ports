# $OpenBSD: Makefile,v 1.4 2021/02/23 19:39:19 sthen Exp $

COMMENT =	Hachoir parsers used to open binary files

MODPY_EGG_VERSION = 1.3.4
DISTNAME =	hachoir-parser-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_PI =	Yes

RUN_DEPENDS =	devel/py-hachoir-core

# Tests need to download external files
do-test:
	cd ${WRKSRC} && PYTHONPATH=${WRKSRC} ${MODPY_BIN} ./tests/download_testcase.py ${WRKSRC}/tests_result/
	cd ${WRKSRC} && PYTHONPATH=${WRKSRC} ${MODPY_BIN} ./tests/run_testcase.py ${WRKSRC}/tests_result/

.include <bsd.port.mk>
