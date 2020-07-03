# $OpenBSD: Makefile,v 1.14 2020/07/03 21:45:03 sthen Exp $

COMMENT=	Compare Dates

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Number-Compare-Date-0.02
REVISION=	3
CATEGORIES=	devel

# perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Time-TimeDate>=1.16 \
		devel/p5-Number-Compare

.include <bsd.port.mk>
