# $OpenBSD: Makefile,v 1.2 2019/04/28 20:51:44 sthen Exp $

COMMENT=		client for the whois.cymru.com service

MODPY_EGG_VERSION=	1.6
DISTNAME=		cymruwhois-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		net

MAINTAINER=		Denis Fondras <denis@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_ADJ_FILES=	cymruwhois.py

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/bin/cymruwhois ${PREFIX}/bin/cymruwhois${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
