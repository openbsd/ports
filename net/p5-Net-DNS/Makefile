# $OpenBSD: Makefile,v 1.41 2012/12/13 16:34:48 naddy Exp $

SHARED_ONLY=		Yes

COMMENT=		module to interface the DNS resolver

MODULES=		cpan
DISTNAME=		Net-DNS-0.68
REVISION=		1
CATEGORIES=		net

HOMEPAGE=		http://www.net-dns.org/

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
