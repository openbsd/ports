# $OpenBSD: Makefile,v 1.8 2019/09/01 03:17:28 kmos Exp $

COMMENT=		argparse replacement, allows options to be set via files/env

MODPY_EGG_VERSION =	0.14.0
DISTNAME=		ConfigArgParse-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

# MIT
PERMIT_PACKAGE=	Yes

FLAVORS=		python3
FLAVOR?=

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST=		Yes

TEST_DEPENDS=		devel/py-mock${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR}

.if !${FLAVOR:Mpython3}
TEST_DEPENDS+=		devel/py-unittest2
.endif

.include <bsd.port.mk>
