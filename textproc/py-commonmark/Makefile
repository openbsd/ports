# $OpenBSD: Makefile,v 1.6 2019/07/12 20:50:11 sthen Exp $

COMMENT=		parser for the CommonMark markdown spec

MODPY_EGG_VERSION=	0.7.5
DISTNAME=		CommonMark-${MODPY_EGG_VERSION}
PKGNAME=		py-commonmark-${MODPY_EGG_VERSION}
CATEGORIES=		textproc
REVISION=		0

MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR?=

RUN_DEPENDS=		devel/py-future${MODPY_FLAVOR}
TEST_DEPENDS=		devel/flake8 \
			devel/py-hypothesis${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/bin/cmark ${PREFIX}/bin/commonmark${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
