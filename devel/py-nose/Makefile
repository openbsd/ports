# $OpenBSD: Makefile,v 1.41 2019/07/12 20:45:51 sthen Exp $

COMMENT=		discovery-based unittest extension

MODPY_EGG_VERSION=	1.3.7
DISTNAME=		nose-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel
REVISION=		5

HOMEPAGE=		http://readthedocs.org/docs/nose/en/latest/

# LGPL
PERMIT_PACKAGE=	Yes

MODPY_PI =		Yes

MODULES=		lang/python

FLAVORS=		python3
FLAVOR?=

TEST_DEPENDS=		${FULLPKGNAME}:devel/py-nose${MODPY_FLAVOR} \
			devel/py-coverage${MODPY_FLAVOR}
.if !${FLAVOR:Mpython3}
TEST_DEPENDS+=		devel/py-twisted
.endif

MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}nose
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/${MODPY_PY_PREFIX}nose/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${MODPY_PY_PREFIX}nose
	cd ${WRKSRC}/examples && \
		find . -type d -exec ${INSTALL_DATA_DIR} \
			${PREFIX}/share/examples/${MODPY_PY_PREFIX}nose/{} \; && \
		find . ! -type d -exec ${INSTALL_DATA} {} \
			${PREFIX}/share/examples/${MODPY_PY_PREFIX}nose/{} \;
	rm ${PREFIX}/bin/nosetests-${MODPY_VERSION}
	mv ${PREFIX}/bin/nosetests \
		${PREFIX}/bin/nosetests${MODPY_BIN_SUFFIX}
	mv ${PREFIX}/man/man1/nosetests.1 \
		${PREFIX}/man/man1/nosetests${MODPY_BIN_SUFFIX}.1


do-test:
	cd ${WRKSRC}/functional_tests && nosetests -v
	cd ${WRKSRC}/unit_tests && nosetests -v

.include <bsd.port.mk>
