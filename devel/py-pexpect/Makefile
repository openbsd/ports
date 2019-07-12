# $OpenBSD: Makefile,v 1.33 2019/07/12 20:45:51 sthen Exp $

COMMENT=		pure Python Expect-like module

MODPY_EGG_VERSION=	4.7.0
DISTNAME=		pexpect-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel
REVISION=		1

HOMEPAGE=		https://pexpect.readthedocs.io/

# ISC
PERMIT_PACKAGE=	Yes

MODPY_PI =		Yes
MODPY_PYTEST =		Yes

MODULES=		lang/python

RUN_DEPENDS =		devel/py-ptyprocess${MODPY_FLAVOR}
BUILD_DEPENDS =		${RUN_DEPENDS} \
			textproc/py-sphinx${MODPY_FLAVOR}
TEST_DEPENDS =		shells/bash

FLAVORS =		python3
FLAVOR ?=

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
	cd ${WRKSRC}/doc && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html \
	    SPHINXBUILD=${LOCALBASE}/bin/sphinx-build${MODPY_BIN_SUFFIX}

# py2: pexpect/_async.py doesn't compile on py2, however it is not used there
# either. upstream won't fix (https://github.com/pexpect/pexpect/issues/290)
# so MODPY_COMMENT is used in the PLIST to avoid installing this file (and
# especially the related pyc file which is not produced due to the failure).

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${EXAMPLESDIR}
	${INSTALL_DATA_DIR} ${DOCDIR}
	cd ${WRKSRC}/doc/_build/html && pax -rw * ${DOCDIR}

.include <bsd.port.mk>
