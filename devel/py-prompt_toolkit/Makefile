# $OpenBSD: Makefile,v 1.10 2019/07/12 20:45:52 sthen Exp $

# !!! do not update blindly: sysutils/aws-shell requires a specific version
PORTROACH=		ignore:1

COMMENT=		python library for building powerful interactive CLI

MODPY_EGG_VERSION=	1.0.15
DISTNAME=		prompt_toolkit-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		devel

HOMEPAGE=		https://github.com/jonathanslenders/python-prompt-toolkit

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST=		Yes
PORTHOME=		${WRKDIR}

RUN_DEPENDS=		devel/py-six${MODPY_FLAVOR} \
			devel/py-wcwidth${MODPY_FLAVOR} \
			textproc/py-pygments${MODPY_FLAVOR}

FLAVORS=		python3
FLAVOR ?=

.include <bsd.port.mk>
