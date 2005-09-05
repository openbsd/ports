#   $OpenBSD: Makefile,v 1.6 2005/09/05 13:12:47 espie Exp $

COMMENT=	"compare two nmap scans and outputs the differences"

DISTNAME=	NDiff-0.04
PKGNAME=	${DISTNAME:L}p0
CATEGORIES=	net perl5

HOMEPAGE=	http://www.vinecorp.com/ndiff/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Brian Caswell <bmc@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:nmap-*:net/nmap

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
