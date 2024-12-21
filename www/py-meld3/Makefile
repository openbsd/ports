COMMENT =		html/xml templating engine

MODPY_DISTV =	2.0.1
DISTNAME =		meld3-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:L}
REVISION =		4

CATEGORIES =		www textproc

HOMEPAGE =		https://github.com/supervisor/meld3

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

MODPY_PYBUILD =		setuptools

DOCS =		${PREFIX}/share/doc/${MODPY_PY_PREFIX}meld3

post-install:
	${INSTALL_DATA_DIR} ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/README.txt ${DOCS}

.include <bsd.port.mk>
