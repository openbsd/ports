# $OpenBSD: Makefile,v 1.1.1.1 2018/06/22 22:02:09 landry Exp $

COMMENT=		setuptools plugin for unit tests with trial

MODPY_EGG_VERSION=	0.6.0
DISTNAME=		setuptools_trial-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

# lots of pytest modules
NO_TEST =		Yes

FLAVORS=		python3
FLAVOR ?=

.include <bsd.port.mk>
