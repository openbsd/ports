# $OpenBSD: Makefile,v 1.7 2020/08/07 08:26:59 jasper Exp $

COMMENT=		complementary command-line interface for Git

MODPY_EGG_VERSION=	0.2.0
DISTNAME=		legit-${MODPY_EGG_VERSION}
CATEGORIES=		devel
REVISION=		0
EXTRACT_SUFX=		.zip

HOMEPAGE=		https://frostming.github.io/legit/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		devel/py-clint>=0.5.1 \
			devel/py-gitpython>=1.0.2 \
			devel/py-six

NO_TEST=		Yes

.include <bsd.port.mk>
