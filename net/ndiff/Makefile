#   $OpenBSD: Makefile,v 1.8 2007/09/15 22:36:55 merdely Exp $

COMMENT=	compare two nmap scans and outputs the differences

DISTNAME=	NDiff-0.04
PKGNAME=	${DISTNAME:L}p1
CATEGORIES=	net perl5

MASTER_SITES=	${MASTER_SITE_PACKETSTORM:=UNIX/nmap/}

MAINTAINER=	Brian Caswell <bmc@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:nmap-*:net/nmap

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
