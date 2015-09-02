# $OpenBSD: Makefile,v 1.7 2015/09/02 06:53:24 benoit Exp $

COMMENT=	handle GnuPG-encrypted/signed messages

DISTNAME =	Mail-GnuPG-0.21
CATEGORIES=	mail security

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	security/p5-GnuPG-Interface>=0.44 \
		mail/p5-MIME-tools>=5.428

MODULES=	cpan

CONFIGURE_STYLE=modbuild

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
