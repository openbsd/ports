# $OpenBSD: Makefile,v 1.2 2020/07/03 21:12:44 sthen Exp $

COMMENT =		esp8266 and esp32 rom bootloader communication tool

MODPY_EGG_VERSION =	2.8
DISTNAME =		esptool-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel
HOMEPAGE =		https://github.com/espressif/esptool

#GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =      Yes

RUN_DEPENDS +=		devel/py-serial${MODPY_FLAVOR} \
			security/py-aes${MODPY_FLAVOR} \
			security/py-ecdsa${MODPY_FLAVOR} \

FLAVORS =		python3
FLAVOR =		python3

NO_TEST =		Yes

.include <bsd.port.mk>
