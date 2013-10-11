# $OpenBSD: Makefile,v 1.11 2013/10/11 23:49:55 naddy Exp $

COMMENT=	simple mail counter

DISTNAME=	cmail-3.1
REVISION =	0
CATEGORIES=	mail

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	ftp://ftp.eboai.org/pub/users/chip/
EXTRACT_SUFX=	.tar.bz2

CONFIGURE_STYLE= perl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cmail
	${INSTALL_DATA}	${WRKSRC}/cmailrc.sample ${PREFIX}/share/examples/cmail

.include <bsd.port.mk>
