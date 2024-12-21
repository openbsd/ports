COMMENT=		high speed universal character encoding detector

MODPY_DISTV=	2.1.7
DISTNAME=		cchardet-${MODPY_DISTV}
PKGNAME=		py-${DISTNAME}
REVISION=		4

CATEGORIES=		textproc

HOMEPAGE=		https://github.com/PyYoshi/cChardet

# MPL 1.1
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} m

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

BUILD_DEPENDS=		lang/cython

.include <bsd.port.mk>
