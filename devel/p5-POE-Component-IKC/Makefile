# $OpenBSD: Makefile,v 1.11 2018/12/02 01:03:31 afresh1 Exp $

COMMENT=	POE Inter-Kernel Communication

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	POE-Component-IKC-0.2402
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-POE>=1.311 \
		devel/p5-Data-Dump \
		devel/p5-Devel-Size

.include <bsd.port.mk>
