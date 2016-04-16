# $OpenBSD: Makefile,v 1.22 2016/04/16 19:06:25 shadchin Exp $

COMMENT=	pure Python Expect-like module

MODPY_EGG_VERSION=	4.0.1
DISTNAME=	pexpect-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
REVISION=	1

HOMEPAGE=	http://pexpect.sourceforge.net/

# ISC
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=	lang/python

RUN_DEPENDS =		devel/py-ptyprocess${MODPY_FLAVOR}
BUILD_DEPENDS =		textproc/py-sphinx${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-test${MODPY_FLAVOR} \
			shells/bash

FLAVORS =		python3
FLAVOR ?=

MODPY_ADJ_FILES =	tests/fakessh/ssh

EXAMPLESDIR=	${PREFIX}/share/examples/${MODPY_PY_PREFIX}pexpect
DOCDIR=		${PREFIX}/share/doc/${MODPY_PY_PREFIX}pexpect

MAKE_ENV +=	PYTHONPATH=${WRKSRC} SPHINXBUILD=${LOCALBASE}/bin/sphinx-build${MODPY_BIN_SUFFIX}

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

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
