# $OpenBSD: Makefile,v 1.10 2017/05/18 15:18:39 shadchin Exp $

COMMENT=		character encoding auto-detection in Python

MODPY_EGG_VERSION=	3.0.3
DISTNAME=		chardet-${MODPY_EGG_VERSION}
PKGNAME=		py-chardet-${MODPY_EGG_VERSION}

CATEGORIES=		textproc

HOMEPAGE=		https://github.com/chardet/chardet

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		devel/py-test-runner${MODPY_FLAVOR}

NO_TEST =		Yes

FLAVORS =		python3
FLAVOR ?=

post-install:
	mv ${PREFIX}/bin/chardetect{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
