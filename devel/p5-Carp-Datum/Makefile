# $OpenBSD: Makefile,v 1.14 2016/03/20 19:56:14 naddy Exp $

COMMENT=	debugging and tracing ultimate module

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Carp-Datum-0.1.3
REVISION=	3
CATEGORIES=	devel perl5

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Getargs-Long>=0.1.3
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
