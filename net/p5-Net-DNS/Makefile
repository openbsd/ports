# $OpenBSD: Makefile,v 1.15 2002/11/27 06:49:42 pvalchev Exp $

COMMENT=		'module to interface the DNS resolver'

DISTNAME=		Net-DNS-0.31
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

BUILD_DEPENDS=		:p5-Digest-HMAC->=1.00:security/p5-Digest-HMAC
RUN_DEPENDS=		${BUILD_DEPENDS}

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
