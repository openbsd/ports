# $OpenBSD: Makefile,v 1.2 2006/12/27 12:56:07 simon Exp $

COMMENT= 	"Email::MIME constructor for starting anew"

MODULES=	cpan

DISTNAME=	Email-MIME-Creator-1.451
CATEGORIES=	mail

MAINTAINER=	Simon Dassow <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::mail/p5-Email-MIME \
		:p5-Email-MIME-Modifier->=1.441:mail/p5-Email-MIME-Modifier \
		::mail/p5-Email-Simple \
		::mail/p5-Email-Simple-Creator

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
