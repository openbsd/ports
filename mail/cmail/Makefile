# $OpenBSD: Makefile,v 1.8 2010/11/19 07:23:06 espie Exp $

COMMENT=	simple mail counter

DISTNAME=	cmail-3.1
REVISION =	0
CATEGORIES=	mail

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	ftp://ftp.eboai.org/pub/users/chip/
EXTRACT_SUFX=	.tar.bz2

CONFIGURE_STYLE= perl
USE_GROFF =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cmail 
	${INSTALL_DATA}	${WRKSRC}/cmailrc.sample ${PREFIX}/share/examples/cmail

.include <bsd.port.mk>
