# $OpenBSD: Makefile,v 1.11 2020/07/03 21:45:16 sthen Exp $

COMMENT=		track the number of times subs are called

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Test-SubCalls-1.10
CATEGORIES=		devel
REVISION=		1

FIX_EXTRACT_PERMISSIONS=	Yes

# perl
PERMIT_PACKAGE=	Yes

TEST_DEPENDS=	devel/p5-Hook-LexWrap

.include <bsd.port.mk>
