COMMENT=	extract semantic information about static Python code

# Pythran has fairly tight version spec on beniget (and gast).
MODPY_DISTV=	0.5.0
DISTNAME=	beniget-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/serge-sans-paille/beniget/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-gast

.include <bsd.port.mk>
