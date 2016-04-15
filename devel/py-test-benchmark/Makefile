# $OpenBSD: Makefile,v 1.1.1.1 2016/04/15 18:32:04 shadchin Exp $

COMMENT =		fixture for benchmarking code

MODPY_EGG_VERSION =	3.0.0
DISTNAME =		pytest-benchmark-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel

HOMEPAGE =		https://pytest-benchmark.readthedocs.org/en/stable/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

EXTRACT_SUFX =		.zip

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-test${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS} \
			${FULLPKGNAME}:${FULLPKGPATH}

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		math/py-statistics
.endif

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} -m pytest tests

.include <bsd.port.mk>
