# $OpenBSD: Makefile,v 1.10 2013/10/11 23:49:58 naddy Exp $

COMMENT=	module to generate replies to e-mail messages.

MODULES=	cpan
DISTNAME=	Email-Reply-1.202
REVISION=	3
CATEGORIES=	mail

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV=	TEST_POD=Yes

RUN_DEPENDS=	mail/p5-Email-Abstract>=2.01 \
		mail/p5-Email-MIME>=1.910

.include <bsd.port.mk>
