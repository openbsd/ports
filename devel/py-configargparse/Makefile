# $OpenBSD: Makefile,v 1.5 2017/05/20 08:10:23 benoit Exp $

COMMENT=		argparse replacement, allows options to be set via files/env

MODPY_EGG_VERSION =	0.12.0
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
