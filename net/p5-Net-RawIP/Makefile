# $OpenBSD: Makefile,v 1.28 2016/03/20 19:56:54 naddy Exp $

COMMENT=	module to manipulate raw ip packets

MODULES=	cpan
DISTNAME=	Net-RawIP-0.25
REVISION=	4
CATEGORIES=	net

MAINTAINER=	Peter Valchev <pvalchev@sightly.net>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pcap perl

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
