# $OpenBSD: Makefile,v 1.8 2021/01/18 00:15:37 daniel Exp $

COMMENT=		parser for the CommonMark markdown spec

MODPY_EGG_VERSION=	0.9.1
DISTNAME=		commonmark-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		textproc

MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

FLAVORS=		python3
FLAVOR =		python3

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		devel/py-future${MODPY_FLAVOR}
TEST_DEPENDS=		devel/flake8 \
			devel/py-hypothesis${MODPY_FLAVOR}

.include <bsd.port.mk>
