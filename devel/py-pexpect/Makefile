# $OpenBSD: Makefile,v 1.42 2021/11/02 00:00:59 sthen Exp $

COMMENT=		pure Python Expect-like module

# XXX 4.8.0 has (random?) timeouts in various tests
MODPY_EGG_VERSION=	4.7.0
DISTNAME=		pexpect-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel
REVISION=		7

HOMEPAGE=		https://pexpect.readthedocs.io/

# ISC
PERMIT_PACKAGE=	Yes

MODPY_PI =		Yes
MODPY_PYTEST =		Yes

MODULES=		lang/python

RUN_DEPENDS =		devel/py-ptyprocess${MODPY_FLAVOR}
BUILD_DEPENDS =		${RUN_DEPENDS} \
			textproc/py-sphinx${MODPY_FLAVOR}>=4.0.2
TEST_DEPENDS =		shells/bash \
			sysutils/coreutils

FLAVORS =		python3
FLAVOR =		python3

MODPY_ADJ_FILES =	tests/fakessh/ssh

EXAMPLESDIR=		${PREFIX}/share/examples/${MODPY_PY_PREFIX}pexpect
DOCDIR=			${PREFIX}/share/doc/${MODPY_PY_PREFIX}pexpect

MAKE_ENV +=		PYTHONPATH=${WRKSRC}

pre-build:
	${SUBST_CMD} ${WRKSRC}/pexpect/replwrap.py
	${SUBST_CMD} ${WRKSRC}/tests/test_ctrl_chars.py
	${SUBST_CMD} ${WRKSRC}/tests/test_performance.py
	${SUBST_CMD} ${WRKSRC}/tests/test_replwrap.py
	${SUBST_CMD} ${WRKSRC}/tests/test_run.py

post-build:
	cd ${WRKSRC}/doc && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${EXAMPLESDIR}
	${INSTALL_DATA_DIR} ${DOCDIR}
	cd ${WRKSRC}/doc/_build/html && pax -rw * ${DOCDIR}

pre-test:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
