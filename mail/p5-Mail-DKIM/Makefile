# $OpenBSD: Makefile,v 1.1.1.1 2007/11/03 17:00:40 merdely Exp $

COMMENT=	DKIM and DomainKeys message-signing implementation

DISTNAME=	Mail-DKIM-0.28_2
CATEGORIES=	mail

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
CPAN_AUTHOR=	JASLONG

RUN_DEPENDS=	::security/p5-Crypt-OpenSSL-RSA \
		::security/p5-Digest-SHA \
		::security/p5-Digest-SHA1 \
		::mail/p5-Mail-Tools \
		::net/p5-Net-DNS

.include <bsd.port.mk>
