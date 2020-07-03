# $OpenBSD: Makefile,v 1.16 2020/07/03 21:12:48 sthen Exp $

COMMENT=		python library for building powerful interactive CLI

# !!! do not update blindly: devel/ipython requires a specific version
PORTROACH=		ignore:1

MODPY_EGG_VERSION=	1.0.15
DISTNAME=		prompt_toolkit-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
EPOCH=			1
REVISION=		1

CATEGORIES=		devel

HOMEPAGE=		https://github.com/prompt-toolkit/python-prompt-toolkit

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
FLAVOR =		python3

.include <bsd.port.mk>
