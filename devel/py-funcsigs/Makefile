# $OpenBSD: Makefile,v 1.4 2017/01/03 19:19:48 landry Exp $

COMMENT=		Python function signatures from PEP362 for 2.6, 2.7, 3.2+

MODPY_EGG_VERSION=	1.0.2
DISTNAME=		funcsigs-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel
REVISION=		0

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR?=

pre-test:
	cd ${WRKSRC}/tests && perl -i -pe 's/unittest2/unittest/g' *.py

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover

.include <bsd.port.mk>
