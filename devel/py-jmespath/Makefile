# $OpenBSD: Makefile,v 1.2 2017/01/03 19:19:48 landry Exp $

COMMENT=		extract elements from a JSON document

MODPY_EGG_VERSION=	0.9.0
DISTNAME=		jmespath-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		devel

HOMEPAGE=		https://github.com/jmespath/jmespath.py

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR ?=

post-install:
	rm ${PREFIX}/bin/jp.py

.include <bsd.port.mk>
