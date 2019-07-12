# $OpenBSD: Makefile,v 1.9 2019/07/12 21:02:19 sthen Exp $

COMMENT=	STM32 bootloader to upload and download firmware

# git checkout at 5th November 2010 from https://github.com/jsnyder/stm32loader
DISTNAME=	stm32loader-0.1
REVISION=	3

CATEGORIES=	devel

# GPLv3
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://distfiles.nl/

MODULES=	lang/python

RUN_DEPENDS=	devel/py-serial

MODPY_ADJ_FILES=stm32loader.py

NO_BUILD=	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/stm32loader.py ${PREFIX}/bin

.include <bsd.port.mk>
