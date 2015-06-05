# $OpenBSD: Makefile,v 1.16 2015/06/05 12:27:03 ajacoutot Exp $

COMMENT=	handle MIME messages

MODULES=	cpan
DISTNAME =	Email-MIME-1.929
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
