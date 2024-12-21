COMMENT=		RCS parsing library for Python

MODPY_DISTV=	0.1
GH_ACCOUNT=		corecode
GH_PROJECT=		rcsparse
GH_COMMIT=		206bca0b90f5780815c0b6c6cbccfd03f27f6985

DISTNAME=		rcsparse-20151027
PKGNAME=		py-${DISTNAME}
REVISION=		7

CATEGORIES=		devel

# AGPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB +=		${MODPY_WANTLIB} pthread

DEBUG_PACKAGES=		${BUILD_PACKAGES}

MODULES=		lang/python
MODPY_PYBUILD=		setuptools

do-test: fake
	2to3 -w ${WRKSRC}/testmodule.py
	cd ${WRKSRC}; \
	    ${SETENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
	    ${MODPY_BIN} testmodule.py

.include <bsd.port.mk>
