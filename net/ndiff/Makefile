#   $OpenBSD: Makefile,v 1.1.1.1 2001/01/17 02:24:23 naddy Exp $

DISTNAME=	NDiff-0.04
PKGNAME=	${DISTNAME:L}
CATEGORIES=	net perl5
NEED_VERSION=	1.351

HOMEPAGE=	http://www.vinecorp.com/ndiff/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Brian Caswell <bmc@mitre.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	nmap::net/nmap

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
