# $OpenBSD: Makefile,v 1.3 2002/06/09 05:31:47 wilfried Exp $

COMMENT=	"simple mail counter"

DISTNAME=	cmail-3.1
CATEGORIES=	mail
NEED_VERSION=	1.496

HOMEPAGE=	http://www.chocobo.cx/chip/projects.html

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	ftp://ftp.eboai.org/pub/users/chip/
EXTRACT_SUFX=	.tar.bz2

RUN_DEPENDS=	:p5-libnet-*:net/p5-libnet

CONFIGURE_STYLE= perl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cmail 
	${INSTALL_DATA}	${WRKSRC}/cmailrc.sample ${PREFIX}/share/examples/cmail

.include <bsd.port.mk>
