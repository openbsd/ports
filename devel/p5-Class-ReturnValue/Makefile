# $OpenBSD: Makefile,v 1.14 2016/03/20 19:56:16 naddy Exp $

COMMENT=	smart return-value object

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Class-ReturnValue-0.55
REVISION=	1
CATEGORIES=	devel

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Devel-StackTrace

CONFIGURE_ARGS= 	--no-prompts

.include <bsd.port.mk>
