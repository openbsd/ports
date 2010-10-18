# $OpenBSD: Makefile,v 1.18 2010/10/18 18:36:54 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	module to manipulate raw ip packets

MODULES=	cpan
DISTNAME=	Net-RawIP-0.21
REVISION=	1
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
