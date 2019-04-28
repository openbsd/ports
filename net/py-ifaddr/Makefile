# $OpenBSD: Makefile,v 1.2 2019/04/28 20:51:44 sthen Exp $

COMMENT=		enumerate IP addresses on the local network adapters

MODPY_EGG_VERSION=	0.1.6
DISTNAME=		ifaddr-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		net

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

TEST_DEPENDS=		devel/py-nose${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.if ! ${FLAVOR:Mpython3}
RUN_DEPENDS +=		net/py-ipaddress
.endif

do-test:
	cd ${WRKSRC} && nosetests${MODPY_BIN_SUFFIX} ifaddr/test_ifaddr.py

.include <bsd.port.mk>
