# $OpenBSD: Makefile,v 1.12 2016/03/20 19:56:45 naddy Exp $

COMMENT=	strip the attachments from an e-mail

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Email-MIME-Attachment-Stripper-1.317
CATEGORIES=	mail

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	mail/p5-Email-MIME>=1.861 \
		mail/p5-Email-MIME-ContentType \
		mail/p5-Email-MIME>=1.910

.include <bsd.port.mk>
