# $OpenBSD: Makefile,v 1.1.1.1 2020/02/23 17:35:04 tracey Exp $

COMMENT =		esp8266 and esp32 rom bootloader communication tool

MODPY_EGG_VERSION =	2.8
DISTNAME =		esptool-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

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
