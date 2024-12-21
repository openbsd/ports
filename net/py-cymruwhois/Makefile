COMMENT=		client for the whois.cymru.com service

MODPY_DISTV=	1.6
DISTNAME=		cymruwhois-${MODPY_DISTV}
PKGNAME=		py-${DISTNAME}
REVISION=		9

CATEGORIES=		net

MAINTAINER=		Denis Fondras <denis@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools
MODPY_ADJ_FILES=	cymruwhois.py

TEST_DEPENDS=		devel/py-nose

.include <bsd.port.mk>
