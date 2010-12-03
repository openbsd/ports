# $OpenBSD: Makefile,v 1.4 2010/12/03 11:45:42 ajacoutot Exp $

COMMENT=	Perl module for SMTP with TLS/AUTH support

MODULES=	cpan
DISTNAME=	Net-SMTP-TLS-0.12
REVISION=	0
CATEGORIES=	net mail
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	security/p5-Digest-HMAC \
		security/p5-Net_SSLeay \
		security/p5-IO-Socket-SSL

.include <bsd.port.mk>
