# $OpenBSD: Makefile,v 1.9 2013/03/11 11:23:52 espie Exp $

COMMENT=	strip the attachments from an e-mail

MODULES=	cpan
DISTNAME=	Email-MIME-Attachment-Stripper-1.316
REVISION=	3
CATEGORIES=	mail
USE_GROFF =	Yes

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	mail/p5-Email-MIME>=1.861 \
		mail/p5-Email-MIME-ContentType \
		mail/p5-Email-MIME>=1.910

.include <bsd.port.mk>
