# $OpenBSD: Makefile,v 1.2 2008/07/18 16:57:57 bluhm Exp $

COMMENT=		perl framework for SIP

DISTNAME=		Net-SIP-0.46

CATEGORIES=		net telephony

MAINTAINER=		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
RUN_DEPENDS=		:p5-Net-DNS->=0.56:net/p5-Net-DNS
REGRESS_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
