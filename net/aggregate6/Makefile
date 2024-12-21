COMMENT=	optimise a list of IPv4/IPv6 prefixes

MODPY_DISTV=	1.0.14

DISTNAME=	aggregate6-${MODPY_DISTV}
CATEGORIES=	net
REVISION=	0

HOMEPAGE=	https://github.com/job/aggregate6/

MAINTAINER=	Job Snijders <job@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-radix

TEST_DEPENDS=	devel/py-coverage \
		devel/py-mock \
		devel/py-nose

.include <bsd.port.mk>
