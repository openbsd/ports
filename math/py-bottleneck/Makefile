# $OpenBSD: Makefile,v 1.8 2019/07/12 20:47:46 sthen Exp $

BROKEN-powerpc = bottleneck/src/move.c:568: internal compiler error: in extract_insn, at recog.c:2077

COMMENT =		fast NumPy array functions written in C

MODPY_EGG_VERSION =	1.2.1
DISTNAME =		Bottleneck-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
CATEGORIES =		math
REVISION =		1

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODULES =		lang/python

RUN_DEPENDS =		math/py-numpy${MODPY_FLAVOR}
BUILD_DEPENDS =		${RUN_DEPENDS}
TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

# one test fail:
# numpy 1.9.2 - median() don't check if array contains any nan's
pre-test:
	@${MODPY_CMD} build_ext --inplace

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -c "import bottleneck; bottleneck.test()"

.include <bsd.port.mk>
