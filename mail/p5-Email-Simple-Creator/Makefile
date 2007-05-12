# $OpenBSD: Makefile,v 1.4 2007/05/12 15:25:38 simon Exp $

COMMENT= 	"Email::Simple constructor for starting anew"

MODULES=	cpan

DISTNAME=	Email-Simple-Creator-1.420
CATEGORIES=	mail

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::mail/p5-Email-Date \
		::mail/p5-Email-Simple

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
