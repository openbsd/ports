# $OpenBSD: Makefile,v 1.9 2019/05/19 19:58:51 danj Exp $

COMMENT=		track the number of times subs are called

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Test-SubCalls-1.10
CATEGORIES=		devel
REVISION=		0

FIX_EXTRACT_PERMISSIONS=	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

TEST_DEPENDS=	devel/p5-Hook-LexWrap

.include <bsd.port.mk>
