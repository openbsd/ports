# $OpenBSD: Makefile,v 1.2 2015/09/29 10:52:29 sthen Exp $

COMMENT=		Reliable Asynchronous Event Transport protocol

MODPY_EGG_VERSION=	0.6.3
DISTNAME=		raet-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		net

HOMEPAGE=		https://github.com/saltstack/raet

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

MODULES=		lang/python

RUN_DEPENDS=		devel/py-ioflo \
			devel/py-six \
			security/py-libnacl

.include <bsd.port.mk>
