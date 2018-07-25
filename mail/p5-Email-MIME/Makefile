# $OpenBSD: Makefile,v 1.22 2018/07/25 08:45:15 ajacoutot Exp $

COMMENT=	handle MIME messages

CPAN_AUTHOR=	RJBS
MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Email-MIME-1.940
CATEGORIES=	mail
EPOCH=		0

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV=	TEST_POD=Yes

RUN_DEPENDS=	mail/p5-Email-MessageID \
		mail/p5-Email-MIME-ContentType \
		mail/p5-Email-MIME-Encodings \
		mail/p5-Email-Simple \
		mail/p5-MIME-Types

.include <bsd.port.mk>
