# $OpenBSD: Makefile,v 1.43 2021/11/14 13:35:42 sthen Exp $

COMMENT=		pure Python Expect-like module

MODPY_EGG_VERSION=	4.8.0
DISTNAME=		pexpect-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel

HOMEPAGE=		https://pexpect.readthedocs.io/

# ISC
PERMIT_PACKAGE=	Yes

MODPY_PI =		Yes
MODPY_PYTEST =		Yes
# verbose to identify hanging tests, see patch-tests_test_expect_py
MODPY_PYTEST_ARGS =	-v

MODULES=		lang/python

RUN_DEPENDS =		devel/py-ptyprocess${MODPY_FLAVOR}
BUILD_DEPENDS =		${RUN_DEPENDS}
TEST_DEPENDS =		shells/bash \
			sysutils/coreutils

TEST_LOG=

FLAVORS =		python3
FLAVOR =		python3

MODPY_ADJ_FILES =	tests/fakessh/ssh

EXAMPLESDIR=		${PREFIX}/share/examples/${MODPY_PY_PREFIX}pexpect
DOCDIR=			${PREFIX}/share/doc/${MODPY_PY_PREFIX}pexpect

pre-build:
	${SUBST_CMD} ${WRKSRC}/pexpect/replwrap.py
	${SUBST_CMD} ${WRKSRC}/tests/test_ctrl_chars.py
	${SUBST_CMD} ${WRKSRC}/tests/test_performance.py
	${SUBST_CMD} ${WRKSRC}/tests/test_replwrap.py
	${SUBST_CMD} ${WRKSRC}/tests/test_run.py

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${EXAMPLESDIR}

pre-test:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
