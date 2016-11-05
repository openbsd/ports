# $OpenBSD: Makefile,v 1.9 2016/11/05 10:29:38 danj Exp $

COMMENT =		C-Extensions for Python

MODPY_EGG_VERSION = 	0.25.1
DISTNAME =		Cython-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:L}

CATEGORIES =		lang

HOMEPAGE =		http://www.cython.org/
MASTER_SITES =		${HOMEPAGE}release/ \
			${MASTER_SITE_PYPI:=C/Cython/}

# Apache 2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=  pthread ${MODPY_WANTLIB}

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

TEST_TARGET =	test

MAKE_ENV +=		PYTHON=${MODPY_BIN}

do-test:
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
        ${ALL_TEST_FLAGS} -f ${MAKE_FILE} ${TEST_TARGET}

.include <bsd.port.mk>
