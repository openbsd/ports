COMMENT =		plugin to manage your versions by scm tags

MODPY_DISTV =	8.0.4
DISTNAME =		setuptools-scm-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/-/_/}
CATEGORIES =		devel
REVISION =		2

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST =		Yes

RUN_DEPENDS +=		devel/py-setuptools \
			devel/py-typing-extensions \
			sysutils/py-packaging
BUILD_DEPENDS +=	${RUN_DEPENDS}

PORTHOME =		${WRKDIR}
TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH} \
			devel/git \
			devel/mercurial \
			devel/py-pip

pre-test:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
