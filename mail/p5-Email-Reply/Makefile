# $OpenBSD: Makefile,v 1.2 2009/11/03 13:27:43 stephan Exp $

COMMENT=	module to generate replies to e-mail messages.

MODULES=	cpan
DISTNAME=	Email-Reply-1.202
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	mail

MAINTAINER=	Stephan A. Rickauer <stephan@openbsd.org>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Email-Abstract->=2.01:mail/p5-Email-Abstract \
		:p5-Email-MIME-Creator->=1.41:mail/p5-Email-MIME-Creator

.include <bsd.port.mk>
