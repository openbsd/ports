COMMENT=	ESP8266 and ESP32 ROM bootloader communication tool

MODPY_DISTV=	4.8.1
DISTNAME=	esptool-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel
HOMEPAGE=	https://github.com/espressif/esptool

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-argcomplete \
		devel/py-bitstring \
		devel/py-intelhex \
		devel/py-serial \
		security/py-ecdsa \
		textproc/py-yaml
# also wants reedsolo for espefuse (not in ports)

# tests not in pypi sdist
NO_TEST=	Yes

.include <bsd.port.arch.mk>
# for espsecure
.if ${PROPERTIES:Mrust}
RUN_DEPENDS +=	security/py-cryptography
.endif

.include <bsd.port.mk>
