# $OpenBSD: Makefile,v 1.4 2010/10/18 19:59:17 espie Exp $

COMMENT=	strip the attachments from an e-mail

MODULES=	cpan
DISTNAME=	Email-MIME-Attachment-Stripper-1.316
REVISION=	0
CATEGORIES=	mail
USE_GROFF =	Yes

MAINTAINER=	Stephan A. Rickauer <stephan@openbsd.org>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Email-MIME->=1.861:mail/p5-Email-MIME \
		::mail/p5-Email-MIME-ContentType \
		:p5-Email-MIME-Modifier->=1.442:mail/p5-Email-MIME-Modifier

.include <bsd.port.mk>
