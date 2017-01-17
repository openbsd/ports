# $OpenBSD: Makefile,v 1.13 2017/01/17 16:18:18 jca Exp $

COMMENT = 		Python charting module

MODPY_EGG_VERSION =	0.3.0
DISTNAME = 		pycha-${MODPY_EGG_VERSION}
REVISION=		5
CATEGORIES = 		graphics

HOMEPAGE = 		http://www.lorenzogil.com/projects/pycha/

# LGPL
PERMIT_PACKAGE_CDROM = 	Yes

MODPY_PI = 		Yes

MODULES = 		lang/python
MODPY_SETUPTOOLS = 	Yes

RUN_DEPENDS = 		graphics/py-cairo
TEST_DEPENDS = 	${RUN_DEPENDS}

do-test: fake
	@cd ${WRKSRC}/tests && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./runner.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pycha
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pycha
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/pycha/
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/pycha/

.include <bsd.port.mk>
