#   $OpenBSD: Makefile,v 1.5 2002/12/29 21:14:11 fgsch Exp $

COMMENT=	"compare two nmap scans and outputs the differences"

DISTNAME=	NDiff-0.04
PKGNAME=	${DISTNAME:L}
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
