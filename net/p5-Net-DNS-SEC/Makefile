# $OpenBSD: Makefile,v 1.1.1.1 2002/10/15 11:24:16 wilfried Exp $

COMMENT=	"extends the Net::DNS module with DNSSEC functionality"

VERSION=	0.07
DISTNAME=	Net-DNS-SEC-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

MAINTAINER=	Wesley Griffin <wgriffin@jtan.com>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		:p5-Net-DNS->=0.27:net/p5-Net-DNS \
			:p5-Crypt-OpenSSL-RSA->=0.16:security/p5-Crypt-OpenSSL-RSA \
			:p5-Crypt-OpenSSL-DSA->=0.10:security/p5-Crypt-OpenSSL-DSA
RUN_DEPENDS=		${BUILD_DEPENDS}

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
