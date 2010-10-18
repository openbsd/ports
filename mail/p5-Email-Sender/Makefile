# $OpenBSD: Makefile,v 1.6 2010/10/18 19:59:17 espie Exp $

COMMENT= 	library for sending email

MODULES=	cpan
USE_GROFF =	Yes

DISTNAME=	Email-Sender-0.102370
CATEGORIES=	mail

MAINTAINER=	Stephan A. Rickauer <stephan@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Moose->=0.70:devel/p5-Moose \
		::devel/p5-List-MoreUtils \
		::sysutils/p5-Capture-Tiny \
		::mail/p5-Email-Address \
		:p5-Email-Abstract->=3:mail/p5-Email-Abstract \
		:p5-Email-Simple->=1.998:mail/p5-Email-Simple \
		:p5-Throwable->=0.100090:devel/p5-Throwable

BUILD_DEPENDS = ${RUN_DEPENDS}

REGRESS_DEPENDS=::devel/p5-Test-MockObject \
		::devel/p5-Sub-Override \
		::devel/p5-Test-JSON

MAKE_ENV+=	RELEASE_TESTING=1

.include <bsd.port.mk>
