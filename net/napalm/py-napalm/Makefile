# $OpenBSD: Makefile,v 1.1.1.1 2018/02/17 14:09:19 jasper Exp $

COMMENT =		network automation abstraction layer

MODPY_EGG_VERSION =	2.3.0
DISTNAME =		napalm-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

HOMEPAGE =		https://github.com/napalm-automation/napalm

BUILD_DEPENDS =		devel/py-pip${MODPY_FLAVOR}
RUN_DEPENDS =		net/py-netaddr${MODPY_FLAVOR} \
			net/py-netmiko${MODPY_FLAVOR}

.include <bsd.port.mk>
