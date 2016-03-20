# $OpenBSD: Makefile,v 1.16 2016/03/20 19:56:24 naddy Exp $

COMMENT=	parses long function arguments

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Getargs-Long-1.1007
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Log-Agent>=0.105 \
		www/p5-URI

.include <bsd.port.mk>
