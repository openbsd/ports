# $OpenBSD: Makefile,v 1.14 2020/08/12 19:48:29 remi Exp $

COMMENT =		synchronize calendars and contacts

MODPY_EGG_VERSION =	0.16.8
DISTNAME =		vdirsyncer-${MODPY_EGG_VERSION}

CATEGORIES =		productivity

HOMEPAGE =		https://vdirsyncer.pimutils.org/

MAINTAINER =		Remi Locherer <remi@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	tests/

BUILD_DEPENDS =		textproc/py-sphinx${MODPY_FLAVOR} \
			devel/py-setuptools_scm${MODPY_FLAVOR} \
			${RUN_DEPENDS}

RUN_DEPENDS =		devel/py-atomicwrites${MODPY_FLAVOR} \
			devel/py-click-log${MODPY_FLAVOR}>=0.3.0 \
			devel/py-click-threading${MODPY_FLAVOR} \
			www/py-requests-oauthlib${MODPY_FLAVOR} \
			www/py-requests-toolbelt${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-hypothesis${MODPY_FLAVOR} \
			devel/py-test-localserver${MODPY_FLAVOR} \
			devel/py-test-subtesthack${MODPY_FLAVOR} \
			www/py-urllib3${MODPY_FLAVOR}

TEST_ENV +=		DAV_SERVER=skip \
			DETERMINISTIC_TESTS=true

post-build:
	cd ${WRKSRC}/docs; ${MAKE_ENV} PYTHONPATH=${WRKSRC} \
		sphinx-build${MODPY_BIN_SUFFIX} \
		-b html -d _build/doctrees . _build/html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vdirsyncer
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vdirsyncer
	cd ${WRKSRC}; ${INSTALL_DATA} AUTHORS.rst CHANGELOG.rst \
		CONTRIBUTING.rst ISSUE_TEMPLATE.md LICENSE README.rst \
		${PREFIX}/share/doc/vdirsyncer
	cd ${WRKSRC}/docs/_build/html && \
		pax -rw * ${PREFIX}/share/doc/vdirsyncer
	${INSTALL_DATA} ${WRKSRC}/config.example \
		${PREFIX}/share/examples/vdirsyncer

.include <bsd.port.mk>
