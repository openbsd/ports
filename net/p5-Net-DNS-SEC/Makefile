# $OpenBSD: Makefile,v 1.2 2002/12/10 19:30:41 jakob Exp $

COMMENT=	"extends the Net::DNS module with DNSSEC functionality"

VERSION=	0.08
DISTNAME=	Net-DNS-SEC-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

MAINTAINER=	Wesley Griffin <wgriffin@jtan.com>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Net-DNS->=0.27:net/p5-Net-DNS \
		:p5-Crypt-OpenSSL-RSA->=0.16:security/p5-Crypt-OpenSSL-RSA \
		:p5-Crypt-OpenSSL-DSA->=0.10:security/p5-Crypt-OpenSSL-DSA

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
