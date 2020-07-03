# $OpenBSD: Makefile,v 1.31 2020/07/03 21:45:35 sthen Exp $

COMMENT=	module to manipulate raw ip packets

MODULES=	cpan
DISTNAME=	Net-RawIP-0.25
REVISION=	6
CATEGORIES=	net

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB += c pcap perl

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
