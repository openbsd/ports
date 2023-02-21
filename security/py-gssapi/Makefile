COMMENT=		Python bindings to GSSAPI C libraries

MODPY_EGG_VERSION=	1.8.2
DISTNAME=		python-gssapi-${MODPY_EGG_VERSION}
PKGNAME=		py-gssapi-${MODPY_EGG_VERSION}

CATEGORIES=		security

# ISC
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://github.com/pythongssapi/python-gssapi/releases/download/v${MODPY_EGG_VERSION}/

WANTLIB += heimdal/lib/gssapi

MODULES=		lang/python

MODPY_PYBUILD=		setuptools

BUILD_DEPENDS=		lang/cython${MODPY_FLAVOR}

LIB_DEPENDS=		security/heimdal,-libs

RUN_DEPENDS=		devel/py-decorator${MODPY_FLAVOR}

FLAVORS=		python3
FLAVOR=			python3

MAKE_ENV=		GSSAPI_KRB5CONFIG=${LOCALBASE}/heimdal/bin/krb5-config

# tests require devel/py-parameterized, k5test (not ported),
# and a MIT Kerberos installation including KDC (they create
# a self-contained Kerberos setup).

.include <bsd.port.mk>
