# $OpenBSD: Makefile,v 1.17 2020/08/05 02:25:27 bket Exp $

COMMENT=		python library for building powerful interactive CLI

MODPY_EGG_VERSION=	3.0.5
DISTNAME=		prompt_toolkit-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
EPOCH=			1

CATEGORIES=		devel

HOMEPAGE=		https://github.com/prompt-toolkit/python-prompt-toolkit

MAINTAINER=		Bjorn Ketelaars <bket@openbsd.org>

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
