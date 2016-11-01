# $OpenBSD: Makefile,v 1.3 2016/11/01 17:11:55 danj Exp $

COMMENT=		argparse replacement, allows options to be set via files/env

MODPY_EGG_VERSION =	0.11.0
DISTNAME=		ConfigArgParse-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

# MIT
PERMIT_PACKAGE_CDROM=	Yes

FLAVORS=		python3
FLAVOR?=

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

TEST_DEPENDS=		textproc/py-yaml${MODPY_FLAVOR}

.include <bsd.port.mk>
