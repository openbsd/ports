COMMENT=	simply sending email

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Email-Send-2.202
CATEGORIES=	mail

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Module-Pluggable \
		devel/p5-Return-Value \
		mail/p5-Email-Address \
		mail/p5-Email-Simple

TEST_DEPENDS=	mail/p5-Email-Abstract \
		mail/p5-Mail-Tools

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
