# $OpenBSD: Makefile,v 1.7 2014/09/08 17:04:51 jasper Exp $

COMMENT=	STM32 bootloader to upload and download firmware

# git checkout at 5th November 2010 from https://github.com/jsnyder/stm32loader
DISTNAME=	stm32loader-0.1
REVISION=	3

CATEGORIES=	devel

# GPLv3
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/python

RUN_DEPENDS=	devel/py-serial

MODPY_ADJ_FILES=stm32loader.py

NO_BUILD=	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/stm32loader.py ${PREFIX}/bin

.include <bsd.port.mk>
