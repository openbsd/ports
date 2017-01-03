# $OpenBSD: Makefile,v 1.4 2017/01/03 19:19:48 landry Exp $

COMMENT=		argparse replacement, allows options to be set via files/env

MODPY_EGG_VERSION =	0.11.0
DISTNAME=		ConfigArgParse-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

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
