# $OpenBSD: Makefile,v 1.11 2019/11/11 09:11:19 kn Exp $

COMMENT=		python library for building powerful interactive CLI

MODPY_EGG_VERSION=	2.0.10
DISTNAME=		prompt_toolkit-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

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
