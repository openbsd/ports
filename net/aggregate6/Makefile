# $OpenBSD: Makefile,v 1.6 2019/07/12 20:47:59 sthen Exp $

COMMENT=	optimise a list of IPv4/IPv6 prefixes

MODPY_EGG_VERSION=	1.0.12

DISTNAME=	aggregate6-${MODPY_EGG_VERSION}
CATEGORIES=	net
REVISION=	0

HOMEPAGE=	https://github.com/job/aggregate6/

MAINTAINER=	Job Snijders <job@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_SETUPTOOLS=	Yes
MODPY_VERSION= ${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS=	devel/py-radix${MODPY_FLAVOR}

TEST_DEPENDS=	devel/py-coverage${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR} \
		devel/py-nose${MODPY_FLAVOR}

.include <bsd.port.mk>
