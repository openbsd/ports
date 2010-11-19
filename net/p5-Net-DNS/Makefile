# $OpenBSD: Makefile,v 1.38 2010/11/19 22:31:35 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		module to interface the DNS resolver

MODULES=		cpan
DISTNAME=		Net-DNS-0.65
REVISION=		0
CATEGORIES=		net
USE_GROFF =		Yes

HOMEPAGE=		http://www.net-dns.org/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		security/p5-Digest-HMAC>=1.00 \
			net/p5-Net-IP>=1.20
REGRESS_DEPENDS=	security/p5-Digest-BubbleBabble \
			devel/p5-Test-Pod

CONFIGURE_ARGS=		--online-tests

.include <bsd.port.mk>
