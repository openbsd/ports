# $OpenBSD: Makefile,v 1.10 2002/08/09 10:45:08 wilfried Exp $

COMMENT=		'module to interface the DNS resolver'

DISTNAME=		Net-DNS-0.26
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

BUILD_DEPENDS=		:p5-MIME-Base64->=2.11:converters/p5-MIME-Base64  \
			:p5-Digest-MD5->=2.12:security/p5-Digest-MD5 \
			:p5-Digest-HMAC->=1.00:security/p5-Digest-HMAC
RUN_DEPENDS=		${BUILD_DEPENDS}

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
