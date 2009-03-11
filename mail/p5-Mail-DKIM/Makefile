# $OpenBSD: Makefile,v 1.5 2009/03/11 08:32:06 giovanni Exp $

COMMENT=	DKIM and DomainKeys message-signing implementation

DISTNAME=	Mail-DKIM-0.33
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
		::mail/p5-Mail-Tools \
		::net/p5-Net-DNS

.include <bsd.port.mk>
