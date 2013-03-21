# $OpenBSD: Makefile,v 1.10 2013/03/21 08:45:19 ajacoutot Exp $

COMMENT = 		Python charting module

MODPY_EGG_VERSION =	0.3.0
DISTNAME = 		pycha-${MODPY_EGG_VERSION}
REVISION=		3
CATEGORIES = 		graphics

HOMEPAGE = 		http://www.lorenzogil.com/projects/pycha/

MAINTAINER = 		Niall O Higgins <niallo@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM = 	Yes

MASTER_SITES = 		${MASTER_SITE_PYPI:=p/pycha/}

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
