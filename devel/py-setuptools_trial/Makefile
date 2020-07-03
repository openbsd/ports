# $OpenBSD: Makefile,v 1.5 2020/07/03 21:12:49 sthen Exp $

COMMENT=		setuptools plugin for unit tests with trial

MODPY_EGG_VERSION=	0.6.0
DISTNAME=		setuptools_trial-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		2

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
