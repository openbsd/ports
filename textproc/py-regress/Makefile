COMMENT=	bindings for ECMA regular expressions in the regress crate

MODPY_DISTV=	2025.5.1
DISTNAME=	regress-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	textproc devel

HOMEPAGE=	https://github.com/crate-py/regress

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	maturin
MODPY_PI=	Yes

TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH} \
		textproc/py-pygments

.include "crates.inc"
.include <bsd.port.mk>
