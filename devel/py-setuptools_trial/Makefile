# $OpenBSD: Makefile,v 1.4 2019/07/12 20:45:53 sthen Exp $

COMMENT=		setuptools plugin for unit tests with trial

MODPY_EGG_VERSION=	0.6.0
DISTNAME=		setuptools_trial-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		1

CATEGORIES=		devel

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

# lots of pytest modules
NO_TEST =		Yes

FLAVORS=		python3
FLAVOR ?=

.include <bsd.port.mk>
