# $OpenBSD: Makefile,v 1.21 2004/01/17 01:55:05 naddy Exp $

COMMENT=		'module to interface the DNS resolver'

DISTNAME=		Net-DNS-0.44
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		net perl5
NOT_FOR_ARCHES=		${NO_SHARED_ARCHES}

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
CONFIGURE_ARGS=		--online-tests

.include <bsd.port.mk>
