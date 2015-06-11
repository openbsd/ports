# $OpenBSD: Makefile,v 1.15 2015/06/11 14:23:29 kili Exp $

COMMENT=	parses long function arguments

MODULES=	cpan
DISTNAME =	Getargs-Long-1.1007
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Log-Agent>=0.105 \
		www/p5-URI

.include <bsd.port.mk>
