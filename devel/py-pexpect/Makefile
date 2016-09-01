# $OpenBSD: Makefile,v 1.26 2016/09/01 06:56:46 shadchin Exp $

COMMENT=		pure Python Expect-like module

MODPY_EGG_VERSION=	4.2.1
DISTNAME=		pexpect-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel

HOMEPAGE=		http://pexpect.sourceforge.net/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=		lang/python

RUN_DEPENDS =		devel/py-ptyprocess${MODPY_FLAVOR}
BUILD_DEPENDS =		${RUN_DEPENDS} \
			textproc/py-sphinx${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-test${MODPY_FLAVOR} \
			shells/bash

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

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${EXAMPLESDIR}
	${INSTALL_DATA_DIR} ${DOCDIR}
	cd ${WRKSRC}/doc/_build/html && pax -rw * ${DOCDIR}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
