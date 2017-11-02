# $OpenBSD: Makefile,v 1.1.1.1 2017/11/02 09:32:36 sebastia Exp $

COMMENT=		parser for the CommonMark markdown spec

MODPY_EGG_VERSION=	0.7.4
DISTNAME=		CommonMark-${MODPY_EGG_VERSION}
PKGNAME=		py-commonmark-${MODPY_EGG_VERSION}
CATEGORIES=		textproc

MAINTAINER=		Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR?=

RUN_DEPENDS=		devel/py-future${MODPY_FLAVOR}
TEST_DEPENDS=		${RUN_DEPENDS} \
			devel/flake8 \
			devel/py-hypothesis${MODPY_FLAVOR}

post-install:
	for i in ${PREFIX}/bin/*; do \
		mv $${i} $${i}${MODPY_BIN_SUFFIX} ;\
	done

.include <bsd.port.mk>
