# $OpenBSD: Makefile,v 1.6 2010/12/03 11:45:38 ajacoutot Exp $

COMMENT=		imap4 gateway to Google webmail service

DISTNAME=		GMail-IMAPD-0.94
REVISION=		1
CATEGORIES=		mail
USE_GROFF =		Yes

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
