COMMENT=	Brave's adblock library

MODPY_DISTV=	0.6.0
DISTNAME=	adblock-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	8

CATEGORIES=	www

# MIT
PERMIT_PACKAGE=Yes

WANTLIB += ${MODCARGO_WANTLIB}

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	maturin
MODPY_TEST_LINK_SO= Yes

TEST_DEPENDS=	textproc/py-toml

.include "crates.inc"

.include <bsd.port.mk>
