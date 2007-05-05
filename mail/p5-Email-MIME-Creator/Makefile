# $OpenBSD: Makefile,v 1.3 2007/05/05 17:44:51 simon Exp $

COMMENT= 	"Email::MIME constructor for starting anew"

MODULES=	cpan

DISTNAME=	Email-MIME-Creator-1.451
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	mail

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

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
