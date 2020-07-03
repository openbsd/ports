# $OpenBSD: Makefile,v 1.10 2020/07/03 21:12:42 sthen Exp $

COMMENT=		argparse replacement, allows options to be set via files/env

MODPY_EGG_VERSION =	0.14.0
DISTNAME=		ConfigArgParse-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		devel

# MIT
PERMIT_PACKAGE=	Yes

FLAVORS=		python3
FLAVOR?=

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST=		Yes

TEST_DEPENDS=		textproc/py-yaml${MODPY_FLAVOR}

.if !${FLAVOR:Mpython3}
TEST_DEPENDS+=		devel/py-mock \
			devel/py-unittest2
.endif

.include <bsd.port.mk>
