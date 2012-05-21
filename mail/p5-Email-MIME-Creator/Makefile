# $OpenBSD: Makefile,v 1.13 2012/05/21 14:00:51 giovanni Exp $

COMMENT= 	Email::MIME constructor for starting anew

MODULES=	cpan
USE_GROFF =	Yes

DISTNAME=	Email-MIME-Creator-1.456
REVISION=	2
CATEGORIES=	mail

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	mail/p5-Email-MIME>=1.910 \
		mail/p5-Email-MIME-Encodings>=1.313 \
		mail/p5-Email-Simple>=2.100

REGRESS_DEPENDS= mail/p5-Email-MIME

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
