# $OpenBSD: Makefile,v 1.13 2020/07/03 21:45:36 sthen Exp $

COMMENT=	extension for UPnP

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Net-UPnP-1.4.6
CATEGORIES=	net
REVISION=	0

# BSD
PERMIT_PACKAGE=	Yes

MODCPAN_EXAMPLES=	Yes

post-extract:
	sed -i 's,^#!/usr/local/bin/perl,#!/usr/bin/perl,' ${WRKSRC}/examples/*pl

.include <bsd.port.mk>
