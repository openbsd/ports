# $OpenBSD: Makefile,v 1.3 2001/04/22 14:01:34 lebel Exp $

COMMENT= 		"tools for creating and reading constant databases"

DISTNAME=		cdb-0.75
HOMEPAGE=		http://cr.yp.to/cdb.html

CATEGORIES=		databases
NEED_VERSION=		1.364
MAINTAINER=		David Lebel <lebel@openbsd.org>

MASTER_SITES=		http://cr.yp.to/cdb/

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

ALL_TARGET=		default
INSTALL_TARGET=		setup check

pre-build:
	@echo ${CC} ${CFLAGS} > ${WRKSRC}/conf-cc
	@echo ${PREFIX} > ${WRKSRC}/conf-home

pre-install:
	@echo ${PREFIX} > ${WRKSRC}/conf-home

post-install:
	${INSTALL_DATA} ${WRKSRC}/cdb.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/cdb.a ${PREFIX}/lib/libcdb.a

.include <bsd.port.mk>
