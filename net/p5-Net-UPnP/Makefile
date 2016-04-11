# $OpenBSD: Makefile,v 1.10 2016/04/11 23:05:02 sthen Exp $

COMMENT=	extension for UPnP

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Net-UPnP-1.4.3
REVISION=	0
CATEGORIES=	net

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODCPAN_EXAMPLES=	Yes

post-extract:
	sed -i 's,^#!/usr/local/bin/perl,#!/usr/bin/perl,' ${WRKSRC}/examples/*pl

.include <bsd.port.mk>
