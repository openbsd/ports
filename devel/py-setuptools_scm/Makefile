COMMENT =		plugin to manage your versions by scm tags

MODPY_EGG_VERSION =	8.0.4
DISTNAME =		setuptools-scm-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:S/-/_/}
CATEGORIES =		devel
REVISION =		0

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS +=		devel/py-setuptools${MODPY_FLAVOR} \
			devel/py-typing-extensions${MODPY_FLAVOR} \
			textproc/py-tomli${MODPY_FLAVOR} \
			sysutils/py-packaging${MODPY_FLAVOR}
BUILD_DEPENDS +=	${RUN_DEPENDS}

PORTHOME =		${WRKDIR}
TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH} \
			devel/git \
			devel/mercurial \
			devel/py-pip${MODPY_FLAVOR}

pre-test:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
