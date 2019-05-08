# $OpenBSD: Makefile,v 1.12 2019/05/08 15:44:45 danj Exp $

COMMENT=	Compare Dates

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Number-Compare-Date-0.02
REVISION=	2
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Time-TimeDate>=1.16 \
		devel/p5-Number-Compare

.include <bsd.port.mk>
