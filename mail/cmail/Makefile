# $OpenBSD: Makefile,v 1.4 2002/10/30 04:13:36 pvalchev Exp $

COMMENT=	"simple mail counter"

DISTNAME=	cmail-3.1
CATEGORIES=	mail

HOMEPAGE=	http://www.chocobo.cx/chip/projects.html

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	ftp://ftp.eboai.org/pub/users/chip/
EXTRACT_SUFX=	.tar.bz2

CONFIGURE_STYLE= perl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cmail 
	${INSTALL_DATA}	${WRKSRC}/cmailrc.sample ${PREFIX}/share/examples/cmail

.include <bsd.port.mk>
