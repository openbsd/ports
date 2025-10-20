COMMENT=	Python bindings for Augeas

MODPY_DISTV=	1.2.0
DISTNAME=	python-augeas-${MODPY_DISTV}
PKGNAME=	${DISTNAME:S/python-/py-/}
REVISION=	0

CATEGORIES=	sysutils

# LGPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += augeas

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

BUILD_DEPENDS=	devel/py-cffi
RUN_DEPENDS=	devel/py-cffi
LIB_DEPENDS=	sysutils/augeas

.include <bsd.port.mk>
