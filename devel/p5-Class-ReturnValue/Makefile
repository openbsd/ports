# $OpenBSD: Makefile,v 1.16 2020/07/03 21:44:43 sthen Exp $

COMMENT=	smart return-value object

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Class-ReturnValue-0.55
REVISION=	2
CATEGORIES=	devel

# Artistic License
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Devel-StackTrace

CONFIGURE_ARGS= 	--no-prompts

.include <bsd.port.mk>
