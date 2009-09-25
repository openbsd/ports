# $OpenBSD: Makefile,v 1.1.1.1 2009/09/25 19:37:14 sthen Exp $

COMMENT=	handle GnuPG-encrypted/signed messages

DISTNAME=	Mail-GnuPG-0.15
CATEGORIES=	mail security

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-GnuPG-Interface->=0.31p0:security/p5-GnuPG-Interface \
		:p5-Mail-Tools->=1.74:mail/p5-Mail-Tools \
		:p5-MIME-tools->=5.426:mail/p5-MIME-tools

MODULES=	cpan

.include <bsd.port.mk>
