# $OpenBSD: Makefile,v 1.1.1.1 2001/06/09 18:39:44 lebel Exp $

COMMENT=	"create and configure svscan-format service directories"

DISTNAME=	service-config-0.51
CATEGORIES=	sysutils
NEED_VERSION=	1.402
MASTER_SITES=	http://www.superscript.com/service-config/

HOMEPAGE=	http://www.superscript.com/service-config/intro.html

MAINTAINER=	David Lebel <lebel@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

ALL_TARGET=		default
INSTALL_TARGET=		setup check

RUN_DEPENDS=		supervise::sysutils/daemontools

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX} > ${WRKSRC}/conf-home

pre-install:
	@echo ${PREFIX} > ${WRKSRC}/conf-home

.include <bsd.port.mk>
