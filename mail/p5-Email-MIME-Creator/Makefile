# $OpenBSD: Makefile,v 1.8 2010/01/08 11:40:43 stephan Exp $

COMMENT= 	Email::MIME constructor for starting anew

MODULES=	cpan

DISTNAME=	Email-MIME-Creator-1.456
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	mail

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::mail/p5-Email-MIME \
		:p5-Email-MIME-Encodings->=1.313:mail/p5-Email-MIME-Encodings \
		:p5-Email-MIME-Modifier->=1.441:mail/p5-Email-MIME-Modifier \
		:p5-Email-Simple->=2.100:mail/p5-Email-Simple

REGRESS_DEPENDS= ::mail/p5-Email-MIME

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
