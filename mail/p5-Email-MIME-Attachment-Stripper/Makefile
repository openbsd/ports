# $OpenBSD: Makefile,v 1.1.1.1 2009/08/10 17:45:05 jasper Exp $

COMMENT=        strip the attachments from an e-mail

MODULES=        cpan
DISTNAME=       Email-MIME-Attachment-Stripper-1.316
CATEGORIES=     mail

MAINTAINER=     Stephan A. Rickauer <stephan.rickauer@startek.ch>

# Same as Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=    :p5-Email-MIME->=1.861:mail/p5-Email-MIME \
                ::mail/p5-Email-MIME-ContentType \
                :p5-Email-MIME-Modifier->=1.442:mail/p5-Email-MIME-Modifier

.include <bsd.port.mk>
