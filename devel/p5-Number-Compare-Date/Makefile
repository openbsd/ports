# $OpenBSD: Makefile,v 1.10 2015/01/21 14:27:58 sthen Exp $

COMMENT=	Compare Dates

MODULES=	cpan
DISTNAME=	Number-Compare-Date-0.02
REVISION=	1
CATEGORIES=	devel

MAINTAINER=	Sam Smith <S@msmith.net>

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Time-TimeDate>=1.16 \
		devel/p5-Number-Compare

.include <bsd.port.mk>
