# $OpenBSD: Makefile,v 1.15 2019/07/12 20:44:47 sthen Exp $

COMMENT=	smart return-value object

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Class-ReturnValue-0.55
REVISION=	1
CATEGORIES=	devel

# Artistic License
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Devel-StackTrace

CONFIGURE_ARGS= 	--no-prompts

.include <bsd.port.mk>
