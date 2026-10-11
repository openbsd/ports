COMMENT=	file watching and code reload

MODPY_DISTV=	1.3.0
DISTNAME=	watchfiles-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	sysutils

# https://github.com/samuelcolvin/watchfiles
HOMEPAGE=	https://watchfiles.helpmanual.io/

# MIT
PERMIT_PACKAGE=Yes

MODULES=	lang/python
MODPY_PYBUILD=	maturin
MODPY_PI=	Yes

MODPY_TEST_LINK_SO= Yes
TEST_DEPENDS=	devel/py-coverage \
		devel/py-dirty-equals \
		devel/py-test-mock \
		devel/py-test-pretty \
		devel/py-test-timeout

.include "crates.inc"
.include <bsd.port.mk>
