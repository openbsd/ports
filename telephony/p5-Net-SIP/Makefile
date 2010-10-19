# $OpenBSD: Makefile,v 1.10 2010/10/19 07:43:05 espie Exp $

COMMENT=		perl framework for SIP

DISTNAME=		Net-SIP-0.59

CATEGORIES=		net telephony

MAINTAINER=		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
USE_GROFF =	Yes
RUN_DEPENDS=		:p5-Net-DNS->=0.56:net/p5-Net-DNS

.include <bsd.port.mk>
