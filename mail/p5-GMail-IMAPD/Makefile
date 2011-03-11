# $OpenBSD: Makefile,v 1.7 2011/03/11 09:00:14 jasper Exp $

COMMENT=		imap4 gateway to Google webmail service

DISTNAME=		GMail-IMAPD-0.94
REVISION=		1
CATEGORIES=		mail

MAINTAINER=		Gleydson Soares <gsoares@trusted.com.br>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

RUN_DEPENDS=		mail/p5-Mail-Webmail-Gmail
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
