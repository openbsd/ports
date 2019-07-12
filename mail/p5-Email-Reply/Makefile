# $OpenBSD: Makefile,v 1.14 2019/07/12 20:47:32 sthen Exp $

COMMENT=	module to generate replies to e-mail messages.

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Email-Reply-1.204
CATEGORIES=	mail

# Same as Perl
PERMIT_PACKAGE=	Yes

MAKE_ENV=	TEST_POD=Yes

RUN_DEPENDS=	mail/p5-Email-Abstract>=2.01 \
		mail/p5-Email-MIME>=1.910 \
		mail/p5-Email-Address
TEST_DEPENDS =	devel/p5-Module-Pluggable \
		sysutils/p5-Capture-Tiny

.include <bsd.port.mk>
