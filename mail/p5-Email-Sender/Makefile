# $OpenBSD: Makefile,v 1.10 2013/03/11 11:23:52 espie Exp $

COMMENT= 	library for sending email

MODULES=	cpan
USE_GROFF =	Yes

DISTNAME=	Email-Sender-0.102370
REVISION=	1
CATEGORIES=	mail

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Moose>=0.70 \
		devel/p5-List-MoreUtils \
		sysutils/p5-Capture-Tiny \
		mail/p5-Email-Address \
		mail/p5-Email-Abstract>=3 \
		mail/p5-Email-Simple>=1.998 \
		devel/p5-Throwable>=0.100090

BUILD_DEPENDS = ${RUN_DEPENDS}

TEST_DEPENDS=devel/p5-Test-MockObject \
		devel/p5-Sub-Override \
		devel/p5-Test-JSON

MAKE_ENV+=	RELEASE_TESTING=1

.include <bsd.port.mk>
