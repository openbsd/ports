# $OpenBSD: Makefile,v 1.20 2011/04/06 18:52:21 pvalchev Exp $

SHARED_ONLY=	Yes

COMMENT=	module to manipulate raw ip packets

MODULES=	cpan
DISTNAME=	Net-RawIP-0.25
CATEGORIES=	net
USE_GROFF =	Yes

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		pcap 

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
