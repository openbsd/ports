# $OpenBSD: Makefile,v 1.40 2012/08/23 15:50:05 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		module to interface the DNS resolver

MODULES=		cpan
DISTNAME=		Net-DNS-0.68
REVISION=		0
CATEGORIES=		net

HOMEPAGE=		http://www.net-dns.org/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		security/p5-Digest-HMAC>=1.00
REGRESS_DEPENDS=	security/p5-Digest-BubbleBabble \
			devel/p5-Test-Pod

CONFIGURE_ARGS=		--online-tests

.include <bsd.port.mk>
