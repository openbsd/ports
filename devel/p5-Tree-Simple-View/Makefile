# $OpenBSD: Makefile,v 1.9 2016/03/20 19:56:40 naddy Exp $

COMMENT=	class for viewing Tree::Simple hierarchies

DISTNAME=	Tree-Simple-View-0.17
REVISION=	0
CATEGORIES=	devel

MODULES=	cpan
PKG_ARCH=	*

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-Class-Throwable>=0.1 \
			devel/p5-Test-Exception>=0.15 \
			devel/p5-Test-LongString \
			devel/p5-Tree-Simple>=1.07

.include <bsd.port.mk>
