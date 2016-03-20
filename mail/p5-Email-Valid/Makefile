# $OpenBSD: Makefile,v 1.19 2016/03/20 19:56:45 naddy Exp $

COMMENT=	check validity of Internet email addresses

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Email-Valid-1.198
CATEGORIES=	mail

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	mail/p5-Mail-Tools>=1.67 \
		devel/p5-IO-CaptureOutput \
		net/p5-Net-Domain-TLD>=1.65 \
		net/p5-Net-DNS

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
