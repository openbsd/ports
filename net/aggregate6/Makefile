# $OpenBSD: Makefile,v 1.4 2019/04/28 20:51:43 sthen Exp $

COMMENT=	optimise a list of IPv4/IPv6 prefixes

MODPY_EGG_VERSION=	1.0.12

DISTNAME=	aggregate6-${MODPY_EGG_VERSION}
CATEGORIES=	net
REVISION=	0

HOMEPAGE=	https://github.com/job/aggregate6/

MAINTAINER=	Job Snijders <job@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_SETUPTOOLS=	Yes
MODPY_VERSION= ${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS=	devel/py-radix${MODPY_FLAVOR}

TEST_DEPENDS=	${RUN_DEPENDS} \
		devel/py-coverage${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR} \
		devel/py-nose${MODPY_FLAVOR}

.include <bsd.port.mk>
