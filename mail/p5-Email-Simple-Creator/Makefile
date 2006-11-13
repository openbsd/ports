# $OpenBSD: Makefile,v 1.1.1.1 2006/11/13 00:11:11 espie Exp $

COMMENT= 	"Email::Simple constructor for starting anew"

MODULES=	cpan

DISTNAME=	Email-Simple-Creator-1.41
CATEGORIES=	mail

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::mail/p5-Email-Date \
		::mail/p5-Email-Simple

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
