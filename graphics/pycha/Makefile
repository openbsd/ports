# $OpenBSD: Makefile,v 1.5 2010/10/24 21:21:01 ajacoutot Exp $

COMMENT = 		Python charting module

MODPY_EGG_VERSION =	0.3.0
DISTNAME = 		pycha-${MODPY_EGG_VERSION}
REVISION=		1
CATEGORIES = 		graphics

HOMEPAGE = 		http://www.lorenzogil.com/projects/pycha/

MAINTAINER = 		Niall O Higgins <niallo@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM = 	Yes
PERMIT_PACKAGE_FTP = 	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP = 	Yes

MASTER_SITES = 		${MASTER_SITE_PYPI:=p/pycha/}

MODULES = 		lang/python
USE_LIBTOOL = 		Yes
MODPY_SETUPTOOLS = 	Yes

RUN_DEPENDS = 		::graphics/py-cairo
REGRESS_DEPENDS = 	${RUN_DEPENDS}

do-regress: fake
	@cd ${WRKSRC}/tests && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./runner.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pycha
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pycha
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/pycha/
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/pycha/

.include <bsd.port.mk>
