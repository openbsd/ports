# $OpenBSD: Makefile,v 1.7 2021/10/29 15:38:47 sthen Exp $

COMMENT=		setuptools plugin for unit tests with trial

MODPY_EGG_VERSION=	0.6.0
DISTNAME=		setuptools_trial-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		4

CATEGORIES=		devel

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

# lots of pytest modules
NO_TEST =		Yes

FLAVORS=		python3
FLAVOR =	python3

.include <bsd.port.mk>
