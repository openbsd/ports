# $OpenBSD: Makefile,v 1.18 2003/04/02 09:35:58 wilfried Exp $

COMMENT=		'module to interface the DNS resolver'

DISTNAME=		Net-DNS-0.34
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
RUN_DEPENDS=		:p5-Digest-HMAC->=1.00:security/p5-Digest-HMAC

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
