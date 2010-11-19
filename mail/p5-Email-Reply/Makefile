# $OpenBSD: Makefile,v 1.5 2010/11/19 07:23:08 espie Exp $

COMMENT=	module to generate replies to e-mail messages.

MODULES=	cpan
DISTNAME=	Email-Reply-1.202
REVISION=	0
CATEGORIES=	mail
USE_GROFF =	Yes

MAINTAINER=	Stephan A. Rickauer <stephan@openbsd.org>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	mail/p5-Email-Abstract>=2.01 \
		mail/p5-Email-MIME-Creator>=1.41

.include <bsd.port.mk>
