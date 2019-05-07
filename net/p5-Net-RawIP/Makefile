# $OpenBSD: Makefile,v 1.29 2019/05/07 17:04:59 danj Exp $

COMMENT=	module to manipulate raw ip packets

MODULES=	cpan
DISTNAME=	Net-RawIP-0.25
REVISION=	5
CATEGORIES=	net

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pcap perl

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
