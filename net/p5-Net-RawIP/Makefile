# $OpenBSD: Makefile,v 1.30 2019/07/12 20:48:39 sthen Exp $

COMMENT=	module to manipulate raw ip packets

MODULES=	cpan
DISTNAME=	Net-RawIP-0.25
REVISION=	5
CATEGORIES=	net

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB += c pcap perl

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
