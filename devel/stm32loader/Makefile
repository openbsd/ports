COMMENT=	STM32 bootloader to upload and download firmware

# git checkout at 5th November 2010 from https://github.com/jsnyder/stm32loader
DISTNAME=	stm32loader-0.1
REVISION=	3

CATEGORIES=	devel

# GPLv3
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://distfiles.sigtrap.nl/

MODULES=	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

RUN_DEPENDS=	devel/py-serial

MODPY_ADJ_FILES=stm32loader.py

NO_BUILD=	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/stm32loader.py ${PREFIX}/bin

.include <bsd.port.mk>
