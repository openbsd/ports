COMMENT=	ESP8266 and ESP32 ROM bootloader communication tool

MODPY_EGG_VERSION=	4.6.2
REVISION=	1
DISTNAME=	esptool-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel
HOMEPAGE=	https://github.com/espressif/esptool

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	devel/py-bitstring${MODPY_FLAVOR} \
		devel/py-serial${MODPY_FLAVOR} \
		security/py-ecdsa${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR}
# also wants reedsolo for espefuse (not in ports)
# 4.8 (untested) also wants:
# devel/py-argcomplete${MODPY_FLAVOR} devel/py-intelhex${MODPY_FLAVOR}

# tests not in pypi sdist
NO_TEST=	Yes

.include <bsd.port.arch.mk>
# for espsecure
.if ${PROPERTIES:Mrust}
RUN_DEPENDS +=	security/py-cryptography${MODPY_FLAVOR}
.endif

.include <bsd.port.mk>
