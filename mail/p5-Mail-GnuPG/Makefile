# $OpenBSD: Makefile,v 1.10 2019/07/12 20:47:34 sthen Exp $

COMMENT=	handle GnuPG-encrypted/signed messages

DISTNAME =	Mail-GnuPG-0.23
CATEGORIES=	mail security

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	security/p5-GnuPG-Interface>=0.44 \
		mail/p5-MIME-tools>=5.428

MODULES=	cpan
PKG_ARCH=	*

CONFIGURE_STYLE=modbuild

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
