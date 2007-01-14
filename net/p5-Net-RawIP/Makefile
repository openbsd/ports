# $OpenBSD: Makefile,v 1.13 2007/01/14 20:49:05 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	"module to manipulate raw ip packets"

MODULES=	cpan
DISTNAME=	Net-RawIP-0.2
CATEGORIES=	net

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		pcap 

.include <bsd.port.mk>
