# $OpenBSD: Makefile,v 1.1.1.1 2017/05/06 09:54:29 landry Exp $

COMMENT =		finite-state machines in Python

MODPY_EGG_VERSION =	0.5.0

DISTNAME =		Automat-${MODPY_EGG_VERSION}
PKGNAME =		py-automat-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/glyph/Automat

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR} \
			textproc/py-m2r${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-attrs${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \

#TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
#			devel/py-twisted${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

#.if ${FLAVOR:Mpython3}
#TEST_DEPENDS +=		devel/py-six${MODPY_FLAVOR}
#.endif
## N.B. enable test after devel/py-twisted upgrade
NO_TEST =		Yes

post-install:
	mv ${PREFIX}/bin/automat-visualize{,${MODPY_BIN_SUFFIX}}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest lib/automat/_test/

.include <bsd.port.mk>
