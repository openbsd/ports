# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:21 naddy Exp $

COMMENT=	wrapper around the Expect module

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Expect-Simple-0.04
REVISION=	0
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Expect

.include <bsd.port.mk>
