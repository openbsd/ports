# $OpenBSD: Makefile,v 1.14 2020/07/03 21:45:25 sthen Exp $

COMMENT=	strip the attachments from an e-mail

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Email-MIME-Attachment-Stripper-1.317
CATEGORIES=	mail
REVISION =	0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	mail/p5-Email-MIME>=1.861 \
		mail/p5-Email-MIME-ContentType \
		mail/p5-Email-MIME>=1.910

.include <bsd.port.mk>
