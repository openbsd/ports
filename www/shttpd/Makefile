# $OpenBSD: Makefile,v 1.1.1.1 2001/03/22 15:04:11 camield Exp $
COMMENT=		HTTP daemons designed to complement publicfile

DISTNAME=		shttpd-0.52
HOMEPAGE=		http://www.superscript.com/shttpd/intro.html

CATEGORIES=		www
NEED_VERSION=		1.340
MAINTAINER=		David Lebel <lebel@lebel.org>

MASTER_SITES=		http://www.superscript.com/shttpd/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

ALL_TARGET=		default
INSTALL_TARGET=		setup check

RUN_DEPENDS=		supervise::sysutils/daemontools \
			tcpserver::net/ucspi-tcp \
			${LOCALBASE}/publicfile/bin/httpd::net/publicfile

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX}/shttpd > ${WRKSRC}/conf-home

pre-install:
	@echo ${PREFIX}/shttpd > ${WRKSRC}/conf-home

.include <bsd.port.mk>
