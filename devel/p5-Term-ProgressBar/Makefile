# $OpenBSD: Makefile,v 1.12 2019/05/04 01:18:58 danj Exp $

COMMENT=		text mode progress bar

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Term-ProgressBar-2.17
REVISION =		1
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS	= ${RUN_DEPENDS}
RUN_DEPENDS	= devel/p5-Class-MethodMaker

.include <bsd.port.mk>
