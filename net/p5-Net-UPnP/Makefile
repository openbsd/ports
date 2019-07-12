# $OpenBSD: Makefile,v 1.12 2019/07/12 20:48:40 sthen Exp $

COMMENT=	extension for UPnP

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Net-UPnP-1.4.6
CATEGORIES=	net

# BSD
PERMIT_PACKAGE=	Yes

MODCPAN_EXAMPLES=	Yes

post-extract:
	sed -i 's,^#!/usr/local/bin/perl,#!/usr/bin/perl,' ${WRKSRC}/examples/*pl

.include <bsd.port.mk>
