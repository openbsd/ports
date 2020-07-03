# $OpenBSD: Makefile,v 1.7 2020/07/03 21:13:14 sthen Exp $

COMMENT =		markdown to reStructuredText converter

MODPY_EGG_VERSION =	0.1.6

DISTNAME =		m2r-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel textproc

HOMEPAGE =		https://github.com/miyakogi/m2r

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		textproc/py-mistune${MODPY_FLAVOR} \
			textproc/py-docutils${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.if ! ${FLAVOR:Mpython3}
TEST_DEPENDS +=         devel/py-mock${MODPY_FLAVOR}
.endif

post-install:
	mv ${PREFIX}/bin/m2r{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
