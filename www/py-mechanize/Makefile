COMMENT=	stateful programmatic web browsing module

MODPY_DISTV=	0.4.10
DISTNAME=	mechanize-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	www

HOMEPAGE=	https://mechanize.readthedocs.io/

# BSD or Zope Public License v2.1
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-html5lib
TEST_DEPENDS=	devel/py-twisted

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${MODPY_PY_PREFIX}mechanize
	cd ${WRKSRC}/examples && umask 022 && pax -rw . \
		 ${PREFIX}/share/examples/${MODPY_PY_PREFIX}mechanize

do-test:
	cd ${WRKSRC}; ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>
