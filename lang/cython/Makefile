# $OpenBSD: Makefile,v 1.12 2017/08/01 20:44:18 juanfra Exp $

COMMENT =		optimising static compiler for Python and Cython

MODPY_EGG_VERSION =	0.26
DISTNAME =		Cython-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:L}
CATEGORIES =		lang

HOMEPAGE =		http://www.cython.org/
MASTER_SITES =		${HOMEPAGE}release/ \
			${MASTER_SITE_PYPI:=C/Cython/}

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# Apache 2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

TEST_TARGET =		test

MAKE_ENV +=		PYTHON=${MODPY_BIN}

do-test:
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${ALL_TEST_FLAGS} -f ${MAKE_FILE} ${TEST_TARGET}

.include <bsd.port.mk>
