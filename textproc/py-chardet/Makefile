COMMENT=	character encoding auto-detection in Python

MODPY_DISTV=	6.0.0.post1
DISTNAME=	chardet-${MODPY_DISTV}
PKGNAME=	py-chardet-${MODPY_DISTV:S/.post/pl/}

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/chardet/chardet

# LGPLv2.1
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatch-vcs
MODPY_PI=	Yes

TEST_DEPENDS=	devel/py-hypothesis \
		devel/py-test-timeout \
		devel/py-test-xdist

.include <bsd.port.mk>
