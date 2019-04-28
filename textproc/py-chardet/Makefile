# $OpenBSD: Makefile,v 1.12 2019/04/28 20:51:55 sthen Exp $

COMMENT=		character encoding auto-detection in Python

MODPY_EGG_VERSION=	3.0.4
DISTNAME=		chardet-${MODPY_EGG_VERSION}
PKGNAME=		py-chardet-${MODPY_EGG_VERSION}
REVISION=		0

CATEGORIES=		textproc

HOMEPAGE=		https://github.com/chardet/chardet

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		devel/py-test-runner${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-hypothesis${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

post-install:
	mv ${PREFIX}/bin/chardetect{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
