# $OpenBSD: Makefile,v 1.22 2019/07/12 20:47:33 sthen Exp $

COMMENT=	check validity of Internet email addresses

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Email-Valid-1.202
CATEGORIES=	mail

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	mail/p5-Mail-Tools>=1.67 \
		devel/p5-IO-CaptureOutput \
		net/p5-Net-Domain-TLD>=1.65 \
		net/p5-Net-DNS

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
