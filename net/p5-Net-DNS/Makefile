# $OpenBSD: Makefile,v 1.29 2006/10/18 22:10:51 wilfried Exp $

SHARED_ONLY=		Yes

COMMENT=		'module to interface the DNS resolver'

DISTNAME=		Net-DNS-0.59
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		net perl5

HOMEPAGE=		http://www.net-dns.org/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Net/} \
			${HOMEPAGE}/download/

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:p5-Digest-HMAC->=1.00:security/p5-Digest-HMAC \
			:p5-Net-IP->=1.20:net/p5-Net-IP
REGRESS_DEPENDS=	::security/p5-Digest-BubbleBabble \
			::devel/p5-Test-Pod

CONFIGURE_STYLE=	perl
CONFIGURE_ARGS=		--online-tests

.include <bsd.port.mk>
