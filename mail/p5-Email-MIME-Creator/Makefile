# $OpenBSD: Makefile,v 1.7 2009/08/12 10:26:58 simon Exp $

COMMENT= 	Email::MIME constructor for starting anew

MODULES=	cpan

DISTNAME=	Email-MIME-Creator-1.456
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
		::mail/p5-Email-Simple \
		::mail/p5-Email-Simple-Creator

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
