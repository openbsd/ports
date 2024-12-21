COMMENT=		Python bindings for libsodium/tweetnacl based on ctypes

MODPY_DISTV=	2.1.0
DISTNAME=		libnacl-${MODPY_DISTV}
PKGNAME=		py-${DISTNAME}
REVISION=		1

CATEGORIES=		security

HOMEPAGE=		https://libnacl.readthedocs.org/en/latest/

MAINTAINER=		Renaud Allard <renaud@allard.it>

# apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		poetry-core

RUN_DEPENDS =		security/libsodium

.include <bsd.port.mk>
