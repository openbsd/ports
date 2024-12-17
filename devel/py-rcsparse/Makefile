COMMENT=		RCS parsing library for Python

MODPY_EGG_VERSION=	0.1
GH_ACCOUNT=		corecode
GH_PROJECT=		rcsparse
GH_COMMIT=		206bca0b90f5780815c0b6c6cbccfd03f27f6985

DISTNAME=		rcsparse-20151027
PKGNAME=		py-${DISTNAME}
REVISION=		6

CATEGORIES=		devel

# AGPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB +=		${MODPY_WANTLIB} pthread

DEBUG_PACKAGES=		${BUILD_PACKAGES}
FLAVORS=		python3
FLAVOR=			python3

MODULES=		lang/python
MODPY_PYBUILD=		setuptools

do-test: fake
	2to3 -w ${WRKSRC}/testmodule.py
	cd ${WRKSRC}; \
	    ${SETENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
	    ${MODPY_BIN} testmodule.py

.include <bsd.port.mk>
