# $OpenBSD: Makefile,v 1.21 2012/08/23 15:50:06 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	module to manipulate raw ip packets

MODULES=	cpan
DISTNAME=	Net-RawIP-0.25
REVISION=	0
CATEGORIES=	net
USE_GROFF =	Yes

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c pcap

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
