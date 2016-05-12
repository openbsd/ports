# $OpenBSD: Makefile,v 1.11 2016/05/12 14:00:13 espie Exp $

COMMENT=		text mode progress bar

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Term-ProgressBar-2.17
REVISION =		0
CATEGORIES=		devel

MAINTAINER=		Girish Venkatachalam <girish1729@gmail.com>

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS	= ${RUN_DEPENDS}
RUN_DEPENDS	= devel/p5-Class-MethodMaker

.include <bsd.port.mk>
