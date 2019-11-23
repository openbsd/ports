# $OpenBSD: Makefile,v 1.13 2019/11/23 16:18:42 ajacoutot Exp $

COMMENT=		python library for building powerful interactive CLI

MODPY_EGG_VERSION=	2.0.10
DISTNAME=		prompt_toolkit-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
EPOCH=			0

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
FLAVOR ?=

.include <bsd.port.mk>
