# $OpenBSD: Makefile,v 1.5 2020/07/03 21:12:58 sthen Exp $

COMMENT=		interact with Youtube Chromecast api

MODPY_EGG_VERSION=	0.2.1
DISTNAME=		casttube-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		multimedia net

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR ?=		python3

TEST_DEPENDS=		net/py-idna${MODPY_FLAVOR} \
			textproc/py-chardet${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

# needs screen_id: https://github.com/ur1katz/CastTube-Scripts
TEST_IS_INTERACTIVE=	Yes

post-install:
	rm ${PREFIX}/LICENSE

.include <bsd.port.mk>
