# $OpenBSD: Makefile,v 1.12 2012/01/29 02:45:19 william Exp $

COMMENT=	DKIM and DomainKeys message-signing implementation

DISTNAME=	Mail-DKIM-0.38
REVISION=	1
CATEGORIES=	mail

MAINTAINER=	William Yodlowsky <william@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
CPAN_AUTHOR=	JASLONG

RUN_DEPENDS=	security/p5-Crypt-OpenSSL-RSA \
		mail/p5-Mail-Tools \
		net/p5-Net-DNS

.include <bsd.port.mk>
