# $OpenBSD: Makefile,v 1.3 2001/07/27 04:12:40 lebel Exp $
COMMENT=		HTTP daemons designed to complement publicfile

DISTNAME=		shttpd-0.53
HOMEPAGE=		http://www.superscript.com/shttpd/intro.html

CATEGORIES=		www
NEED_VERSION=		1.364
MAINTAINER=		David Lebel <lebel@openbsd.org>

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
