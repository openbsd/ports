# $OpenBSD: Makefile,v 1.12 2015/01/21 06:13:49 bentley Exp $

COMMENT=	simple mail counter

DISTNAME=	cmail-3.1
REVISION =	1
CATEGORIES=	mail

PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	ftp://ftp.eboai.org/pub/users/chip/
EXTRACT_SUFX=	.tar.bz2

CONFIGURE_STYLE= perl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cmail
	${INSTALL_DATA}	${WRKSRC}/cmailrc.sample ${PREFIX}/share/examples/cmail

.include <bsd.port.mk>
