# $OpenBSD: Makefile,v 1.19 2010/12/03 11:45:42 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	module to manipulate raw ip packets

MODULES=	cpan
DISTNAME=	Net-RawIP-0.21
REVISION=	2
CATEGORIES=	net
USE_GROFF =	Yes

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		pcap 

.include <bsd.port.mk>
