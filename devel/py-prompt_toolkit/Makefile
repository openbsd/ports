# $OpenBSD: Makefile,v 1.5 2017/01/03 19:19:49 landry Exp $

# !!! do not update blindly: sysutils/aws-shell requires a specific version
PORTROACH=		ignore:1

COMMENT=		python library for building powerful interactive CLI

MODPY_EGG_VERSION=	1.0.7
DISTNAME=		prompt_toolkit-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		devel

HOMEPAGE=		https://github.com/jonathanslenders/python-prompt-toolkit

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		devel/py-six${MODPY_FLAVOR} \
			devel/py-wcwidth${MODPY_FLAVOR} \
			textproc/py-pygments${MODPY_FLAVOR}

TEST_DEPENDS=		${RUN_DEPENDS} \
			devel/py-test${MODPY_FLAVOR}

FLAVORS=		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
