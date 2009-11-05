# $OpenBSD: Makefile,v 1.1.1.1 2009/11/05 13:23:41 sthen Exp $

COMMENT=	SSL support for Net::SMTP

MODULES=	cpan
DISTNAME=	Net-SMTP-SSL-1.01
CATEGORIES=	net mail

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::security/p5-IO-Socket-SSL

.include <bsd.port.mk>
