# $OpenBSD: Makefile,v 1.10 2019/07/12 20:45:11 sthen Exp $

COMMENT=		track the number of times subs are called

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Test-SubCalls-1.10
CATEGORIES=		devel
REVISION=		0

FIX_EXTRACT_PERMISSIONS=	Yes

# perl
PERMIT_PACKAGE=	Yes

TEST_DEPENDS=	devel/p5-Hook-LexWrap

.include <bsd.port.mk>
