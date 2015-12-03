# $OpenBSD: Makefile,v 1.12 2015/12/03 14:44:05 benoit Exp $

COMMENT=	module to generate replies to e-mail messages.

MODULES=	cpan
DISTNAME =	Email-Reply-1.204
CATEGORIES=	mail

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV=	TEST_POD=Yes

RUN_DEPENDS=	mail/p5-Email-Abstract>=2.01 \
		mail/p5-Email-MIME>=1.910 \
		mail/p5-Email-Address
TEST_DEPENDS =	devel/p5-Module-Pluggable \
		sysutils/p5-Capture-Tiny

.include <bsd.port.mk>
