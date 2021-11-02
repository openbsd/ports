# $OpenBSD: Makefile,v 1.10 2021/11/02 00:02:37 sthen Exp $

COMMENT=		parser for the CommonMark markdown spec

MODPY_EGG_VERSION=	0.9.1
DISTNAME=		commonmark-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		textproc
REVISION=		1

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

post-install:
	mv ${PREFIX}/bin/cmark ${PREFIX}/bin/commonmark

.include <bsd.port.mk>
