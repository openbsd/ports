# $OpenBSD: Makefile,v 1.21 2018/04/28 14:36:25 ajacoutot Exp $

COMMENT=	handle MIME messages

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Email-MIME-1.946
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
