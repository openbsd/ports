# $OpenBSD: Makefile,v 1.27 2015/10/13 06:29:38 bentley Exp $

SHARED_ONLY=	Yes

COMMENT=	module to manipulate raw ip packets

MODULES=	cpan
DISTNAME=	Net-RawIP-0.25
REVISION=	4
CATEGORIES=	net

MAINTAINER=	Peter Valchev <pvalchev@sightly.net>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pcap

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
