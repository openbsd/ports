# $OpenBSD: Makefile,v 1.5 2019/05/15 12:04:41 kmos Exp $

COMMENT=		parser for the CommonMark markdown spec

MODPY_EGG_VERSION=	0.7.5
DISTNAME=		CommonMark-${MODPY_EGG_VERSION}
PKGNAME=		py-commonmark-${MODPY_EGG_VERSION}
CATEGORIES=		textproc
REVISION=		0

MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

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
