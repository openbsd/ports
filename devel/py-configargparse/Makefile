# $OpenBSD: Makefile,v 1.11 2020/07/06 14:25:07 kn Exp $

COMMENT=		argparse replacement, allows options to be set via files/env

MODPY_EGG_VERSION =	1.2.3
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

TEST_DEPENDS=		textproc/py-yaml${MODPY_FLAVOR}

.if !${FLAVOR:Mpython3}
TEST_DEPENDS+=		devel/py-mock \
			devel/py-unittest2
.endif

.include <bsd.port.mk>
