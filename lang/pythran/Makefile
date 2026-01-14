COMMENT=	ahead of time compiler for numeric kernels

MODPY_DISTV=	0.18.1
DISTNAME=	pythran-${MODPY_DISTV}

CATEGORIES=	lang

HOMEPAGE=	https://github.com/serge-sans-paille/pythran

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

# There are tests in the github tarball; they take hours to run.
NO_TEST=	Yes

RUN_DEPENDS=	devel/py-ply>=3.4 \
		devel/py-gast>=0.6.0,<0.7 \
		devel/py-beniget>=0.4.0,<0.5 \
		math/py-numpy

.include <bsd.port.mk>
