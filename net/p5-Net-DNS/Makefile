# $OpenBSD: Makefile,v 1.25 2005/07/27 07:25:27 wilfried Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=		'module to interface the DNS resolver'

DISTNAME=		Net-DNS-0.53
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
RUN_DEPENDS=		:p5-Digest-HMAC->=1.00:security/p5-Digest-HMAC \
			:p5-Net-IP->=1.20:net/p5-Net-IP

CONFIGURE_STYLE=	perl
CONFIGURE_ARGS=		--online-tests

.include <bsd.port.mk>
