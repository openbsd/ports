# $OpenBSD: Makefile,v 1.5 2017/04/15 17:25:39 sebastia Exp $

COMMENT=	command line library for Python

MODPY_EGG_VERSION=6.7
DISTNAME=	click-${MODPY_EGG_VERSION}
PKGNAME=	py-click-${MODPY_EGG_VERSION}

CATEGORIES=	devel

HOMEPAGE=	http://click.pocoo.org/6/

MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =	Yes

MODULES=	lang/python

MODPY_SETUPTOOLS= Yes

FLAVORS=	python3
FLAVOR?=

TEST_DEPENDS=	devel/py-test${MODPY_FLAVOR}

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
