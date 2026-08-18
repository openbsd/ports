COMMENT=	ahead of time compiler for numeric kernels

MODPY_DISTV=	0.19.0
GH_ACCOUNT=	serge-sans-paille
GH_PROJECT=	pythran
GH_TAGNAME=	${MODPY_DISTV}

CATEGORIES=	lang

HOMEPAGE=	https://github.com/serge-sans-paille/pythran

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-ply>=3.4 \
		devel/py-gast>=0.7.0,<0.8 \
		devel/py-beniget>=0.5.0,<0.6 \
		math/py-numpy

# there are tests, but they take a huge time even just to collect
# (I gave up after waiting 15 minutes)
NO_TEST=	Yes

.include <bsd.port.mk>
