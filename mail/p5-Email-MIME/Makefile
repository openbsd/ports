# $OpenBSD: Makefile,v 1.17 2015/09/23 12:45:14 vgross Exp $

COMMENT=	handle MIME messages

MODULES=	cpan
DISTNAME =	Email-MIME-1.936
CATEGORIES=	mail

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV=	TEST_POD=Yes

RUN_DEPENDS=	mail/p5-Email-MessageID \
		mail/p5-Email-MIME-ContentType \
		mail/p5-Email-MIME-Encodings \
		mail/p5-Email-Simple \
		mail/p5-MIME-Types

.include <bsd.port.mk>
