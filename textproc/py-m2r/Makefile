# $OpenBSD: Makefile,v 1.1.1.1 2017/05/06 09:51:45 landry Exp $

COMMENT =		markdown to reStructuredText converter

MODPY_EGG_VERSION =	0.1.5

DISTNAME =		m2r-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel textproc

HOMEPAGE =		https://github.com/miyakogi/m2r

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes
MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		textproc/py-mistune${MODPY_FLAVOR} \
			textproc/py-docutils${MODPY_FLAVOR}

TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-test${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.if ! ${FLAVOR:Mpython3}
TEST_DEPENDS +=         devel/py-mock${MODPY_FLAVOR}
.endif

post-install:
	mv ${PREFIX}/bin/m2r{,${MODPY_BIN_SUFFIX}}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
