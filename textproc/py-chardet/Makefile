COMMENT=	character encoding auto-detection in Python

# 6 is more accurate but has performance issues
# 7 has compat issues:
#   https://github.com/chardet/chardet/issues/332
#   https://github.com/chardet/chardet/issues/329
# and the original author of the code objects to relicensing
#   https://github.com/chardet/chardet/issues/327
MODPY_DISTV=	5.2.0
DISTNAME=	chardet-${MODPY_DISTV}
PKGNAME=	py-chardet-${MODPY_DISTV:S/.post/pl/}

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/chardet/chardet

EPOCH=		0

# LGPLv2.1
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

TEST_DEPENDS=	devel/py-hypothesis

.include <bsd.port.mk>
