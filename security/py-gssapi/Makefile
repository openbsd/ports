COMMENT=		Python bindings to GSSAPI C libraries

MODPY_DISTV=	1.8.3
DISTNAME=		python-gssapi-${MODPY_DISTV}
PKGNAME=		py-gssapi-${MODPY_DISTV}
REVISION=		1

CATEGORIES=		security

# ISC
PERMIT_PACKAGE=	Yes

SITES=			https://github.com/pythongssapi/python-gssapi/releases/download/v${MODPY_DISTV}/

WANTLIB += heimdal/lib/gssapi

MODULES=		lang/python \
			security/heimdal

MODPY_PYBUILD=		setuptools

BUILD_DEPENDS=		lang/cython

RUN_DEPENDS=		devel/py-decorator

# tests require devel/py-parameterized, k5test (not ported),
# and a MIT Kerberos installation including KDC (they create
# a self-contained Kerberos setup).

.include <bsd.port.mk>
