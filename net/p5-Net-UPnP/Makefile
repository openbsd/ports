# $OpenBSD: Makefile,v 1.11 2019/01/07 06:35:53 steven Exp $

COMMENT=	extension for UPnP

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Net-UPnP-1.4.6
CATEGORIES=	net

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODCPAN_EXAMPLES=	Yes

post-extract:
	sed -i 's,^#!/usr/local/bin/perl,#!/usr/bin/perl,' ${WRKSRC}/examples/*pl

.include <bsd.port.mk>
