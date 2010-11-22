# $OpenBSD: Makefile,v 1.3 2010/11/22 08:56:47 jasper Exp $

COMMENT=	STM32 bootloader to upload and download firmware

# git checkout at 5th November 2010 from https://github.com/jsnyder/stm32loader
DISTNAME=	stm32loader-0.1
REVISION=	0

CATEGORIES=	devel

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/python

RUN_DEPENDS=	devel/py-serial

MODPY_ADJ_FILES=stm32loader.py

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/stm32loader.py ${PREFIX}/bin

.include <bsd.port.mk>
