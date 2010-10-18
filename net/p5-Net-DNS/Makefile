# $OpenBSD: Makefile,v 1.37 2010/10/18 18:36:52 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		module to interface the DNS resolver

MODULES=		cpan
DISTNAME=		Net-DNS-0.65
REVISION=		0
CATEGORIES=		net
USE_GROFF =	Yes

HOMEPAGE=		http://www.net-dns.org/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:p5-Digest-HMAC->=1.00:security/p5-Digest-HMAC \
			:p5-Net-IP->=1.20:net/p5-Net-IP
REGRESS_DEPENDS=	::security/p5-Digest-BubbleBabble \
			::devel/p5-Test-Pod

CONFIGURE_ARGS=		--online-tests

.include <bsd.port.mk>
