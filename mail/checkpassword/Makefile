# $OpenBSD: Makefile,v 1.9 2001/05/06 01:46:00 lebel Exp $

COMMENT=	"simple, uniform password-checking interface"

DISTNAME=	checkpassword-0.90
HOMEPAGE=	http://cr.yp.to/checkpwd.html
CATEGORIES=	mail
MAINTAINER=	Camiel Dobbelaar <cd@sentia.nl>
NEED_VERSION=	1.402

MASTER_SITES=	http://cr.yp.to/checkpwd/

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

ALL_TARGET=	default
INSTALL_TARGET=	setup check

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX} > ${WRKSRC}/conf-home

pre-install:
	@echo ${PREFIX} > ${WRKSRC}/conf-home

.include <bsd.port.mk>
