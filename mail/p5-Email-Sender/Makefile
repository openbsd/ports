# $OpenBSD: Makefile,v 1.8 2010/12/03 11:45:38 ajacoutot Exp $

COMMENT= 	library for sending email

MODULES=	cpan
USE_GROFF =	Yes

DISTNAME=	Email-Sender-0.102370
REVISION=	0
CATEGORIES=	mail

MAINTAINER=	Stephan A. Rickauer <stephan@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Moose>=0.70 \
		devel/p5-List-MoreUtils \
		sysutils/p5-Capture-Tiny \
		mail/p5-Email-Address \
		mail/p5-Email-Abstract>=3 \
		mail/p5-Email-Simple>=1.998 \
		devel/p5-Throwable>=0.100090

BUILD_DEPENDS = ${RUN_DEPENDS}

REGRESS_DEPENDS=devel/p5-Test-MockObject \
		devel/p5-Sub-Override \
		devel/p5-Test-JSON

MAKE_ENV+=	RELEASE_TESTING=1

.include <bsd.port.mk>
