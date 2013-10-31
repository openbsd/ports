# $OpenBSD: Makefile,v 1.24 2013/10/31 21:12:13 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	module to manipulate raw ip packets

MODULES=	cpan
DISTNAME=	Net-RawIP-0.25
REVISION=	1
CATEGORIES=	net

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pcap

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
