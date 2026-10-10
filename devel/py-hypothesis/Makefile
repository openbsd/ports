COMMENT=	library for property based testing

MODPY_DISTV=	6.168.5
DISTNAME=	hypothesis-${MODPY_DISTV}
PKGNAME=	py-hypothesis-${MODPY_DISTV}
CATEGORIES=	devel

# https://github.com/HypothesisWorks/hypothesis
# https://hypothesis.readthedocs.io/en/latest/changelog.html
HOMEPAGE=	https://hypothesis.works/

# MPL 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	maturin
MODPY_PI=	Yes

MODCARGO_CARGOTOML= ${WRKSRC}/rust/Cargo.toml

RUN_DEPENDS=	devel/py-attrs \
		devel/py-coverage \
		devel/py-sortedcontainers<3.0.0

# tests only in sdist (with various deps, some unported)
NO_TEST=	Yes

.include "crates.inc"
.include <bsd.port.mk>
