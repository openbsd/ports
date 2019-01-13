# $OpenBSD: Makefile,v 1.8 2019/01/13 14:23:12 cwen Exp $

COMMENT=		track the number of times subs are called

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Test-SubCalls-1.10
CATEGORIES=		devel

FIX_EXTRACT_PERMISSIONS=	Yes

MAINTAINER=		Jim Razmus II <jim@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

TEST_DEPENDS=	devel/p5-Hook-LexWrap

.include <bsd.port.mk>
