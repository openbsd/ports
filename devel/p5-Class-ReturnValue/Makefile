# $OpenBSD: Makefile,v 1.13 2015/01/21 14:27:56 sthen Exp $

COMMENT=	smart return-value object

MODULES=	cpan
DISTNAME=	Class-ReturnValue-0.55
REVISION=	1
CATEGORIES=	devel

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Devel-StackTrace

CONFIGURE_ARGS= 	--no-prompts

.include <bsd.port.mk>
