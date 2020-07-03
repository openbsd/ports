# $OpenBSD: Makefile,v 1.13 2020/07/03 21:45:04 sthen Exp $

COMMENT=	POE Inter-Kernel Communication

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	POE-Component-IKC-0.2402
CATEGORIES=	devel
REVISION=	0

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-POE>=1.311 \
		devel/p5-Data-Dump \
		devel/p5-Devel-Size

.include <bsd.port.mk>
