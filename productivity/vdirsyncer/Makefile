COMMENT =		synchronize calendars and contacts

MODPY_DISTV =		0.19.3
DISTNAME =		vdirsyncer-${MODPY_DISTV}

CATEGORIES =		productivity

HOMEPAGE =		https://vdirsyncer.pimutils.org/

MAINTAINER =		Remi Locherer <remi@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

BUILD_DEPENDS =		textproc/py-sphinx>=4.0.2 \
			${RUN_DEPENDS}

RUN_DEPENDS =		devel/py-atomicwrites \
			www/py-aiohttp \
			www/py-aiohttp-oauthlib \
			devel/py-aiostream \
			devel/py-click-log>=0.3.0 \
			devel/py-click-threading \
			www/py-requests

TEST_DEPENDS =		devel/py-hypothesis \
			devel/py-test-cov \
			devel/py-test-httpserver \
			devel/py-test-asyncio \
			security/py-trustme \
			devel/py-aioresponses

TEST_ENV +=		DAV_SERVER=skip \
			DETERMINISTIC_TESTS=true

post-build:
	cd ${WRKSRC}/docs; ${MAKE_ENV} PYTHONPATH=${WRKSRC} \
		sphinx-build -b man -d _build/doctrees . _build/man

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vdirsyncer
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vdirsyncer
	cd ${WRKSRC}; ${INSTALL_DATA} AUTHORS.rst CHANGELOG.rst \
		CONTRIBUTING.rst ISSUE_TEMPLATE.md LICENSE README.rst \
		${PREFIX}/share/doc/vdirsyncer
	cd ${WRKSRC}/docs/_build/man; \
		${INSTALL_MAN} vdirsyncer.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/config.example \
		${PREFIX}/share/examples/vdirsyncer

.include <bsd.port.mk>
