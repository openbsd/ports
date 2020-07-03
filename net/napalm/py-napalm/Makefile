# $OpenBSD: Makefile,v 1.7 2020/07/03 21:13:00 sthen Exp $

COMMENT =		network automation abstraction layer

MODPY_EGG_VERSION =	2.3.3
REVISION =		2
DISTNAME =		napalm-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

HOMEPAGE =		https://github.com/napalm-automation/napalm

BUILD_DEPENDS =		devel/py-pip${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-cffi${MODPY_FLAVOR}>=1.11.5 \
			net/py-IOSXR${MODPY_FLAVOR} \
			net/py-eapi${MODPY_FLAVOR} \
			net/py-netaddr${MODPY_FLAVOR} \
			net/py-netmiko${MODPY_FLAVOR} \
			net/py-nxos${MODPY_FLAVOR} \
			net/py-junos-eznc${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR}

.include <bsd.port.mk>
