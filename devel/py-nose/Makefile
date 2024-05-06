COMMENT=	discovery-based unittest extension

MODPY_EGG_VERSION=	1.3.7
DISTNAME=	nose-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
REVISION=	15

HOMEPAGE=	https://nose.readthedocs.io/en/latest/

# LGPL
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

# tests not ported to python 3
NO_TEST=	Yes

post-patch:
	cd ${WRKSRC} && 2to3 --no-diffs -w nose

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}nose
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/${MODPY_PY_PREFIX}nose/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${MODPY_PY_PREFIX}nose
	cd ${WRKSRC}/examples && \
		find . -type d -exec ${INSTALL_DATA_DIR} \
			${PREFIX}/share/examples/${MODPY_PY_PREFIX}nose/{} \; && \
		find . ! -type d -exec ${INSTALL_DATA} {} \
			${PREFIX}/share/examples/${MODPY_PY_PREFIX}nose/{} \;
	mv ${PREFIX}/bin/nosetests \
		${PREFIX}/bin/nosetests${MODPY_BIN_SUFFIX}
	mv ${PREFIX}/man/man1/nosetests.1 \
		${PREFIX}/man/man1/nosetests${MODPY_BIN_SUFFIX}.1

.include <bsd.port.mk>
