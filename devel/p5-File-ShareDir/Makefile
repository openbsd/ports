# $OpenBSD: Makefile,v 1.10 2014/06/24 14:18:29 sthen Exp $

COMMENT=	locate install data per-module

MODULES=	cpan
DISTNAME=	File-ShareDir-1.102
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Inspector \
		devel/p5-File-ShareDir-Install
TEST_DEPENDS=	devel/p5-Test-More

.include <bsd.port.mk>
