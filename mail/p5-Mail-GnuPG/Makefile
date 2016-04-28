# $OpenBSD: Makefile,v 1.9 2016/04/28 14:28:13 rpe Exp $

COMMENT=	handle GnuPG-encrypted/signed messages

DISTNAME =	Mail-GnuPG-0.23
CATEGORIES=	mail security

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	security/p5-GnuPG-Interface>=0.44 \
		mail/p5-MIME-tools>=5.428

MODULES=	cpan
PKG_ARCH=	*

CONFIGURE_STYLE=modbuild

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
