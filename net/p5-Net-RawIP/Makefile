# $OpenBSD: Makefile,v 1.23 2013/10/11 23:50:26 naddy Exp $

SHARED_ONLY=	Yes

COMMENT=	module to manipulate raw ip packets

MODULES=	cpan
DISTNAME=	Net-RawIP-0.25
REVISION=	0
CATEGORIES=	net

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pcap

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
