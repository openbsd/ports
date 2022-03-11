COMMENT=		stateful programmatic web browsing module

MODPY_EGG_VERSION=	0.4.6
DISTNAME=		mechanize-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		www

HOMEPAGE=		https://mechanize.readthedocs.io/

# BSD or Zope Public License v2.1
PERMIT_PACKAGE=	Yes

FLAVORS=	python3
FLAVOR=		python3

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes
MODPY_PI=		Yes

RUN_DEPENDS=	devel/py-html5lib${MODPY_FLAVOR}
TEST_DEPENDS=	devel/py-twisted${MODPY_FLAVOR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${MODPY_PY_PREFIX}-mechanize
	cd ${WRKSRC}/examples && umask 022 && pax -rw . \
		 ${PREFIX}/share/examples/${MODPY_PY_PREFIX}-mechanize

do-test:
	cd ${WRKSRC} && \
		env PYTHONPATH="${WRKINST}${MODPY_LIBDIR}/site-packages/mechanize" ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>
