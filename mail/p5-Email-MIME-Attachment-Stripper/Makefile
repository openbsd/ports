# $OpenBSD: Makefile,v 1.7 2011/08/01 19:42:19 stephan Exp $

COMMENT=	strip the attachments from an e-mail

MODULES=	cpan
DISTNAME=	Email-MIME-Attachment-Stripper-1.316
REVISION=	2
CATEGORIES=	mail
USE_GROFF =	Yes

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	mail/p5-Email-MIME>=1.861 \
		mail/p5-Email-MIME-ContentType \
		mail/p5-Email-MIME-Modifier>=1.442

.include <bsd.port.mk>
