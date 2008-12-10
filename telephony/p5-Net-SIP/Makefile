# $OpenBSD: Makefile,v 1.4 2008/12/10 09:35:45 bernd Exp $

COMMENT=		perl framework for SIP

DISTNAME=		Net-SIP-0.50

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
