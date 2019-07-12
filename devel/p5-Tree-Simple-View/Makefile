# $OpenBSD: Makefile,v 1.11 2019/07/12 20:45:13 sthen Exp $

COMMENT=	class for viewing Tree::Simple hierarchies

DISTNAME =	Tree-Simple-View-0.180001
CATEGORIES=	devel

MODULES=	cpan
PKG_ARCH=	*

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/p5-Class-Throwable>=0.1 \
			devel/p5-Test-Exception>=0.15 \
			devel/p5-Test-LongString \
			devel/p5-Tree-Simple>=1.07

.include <bsd.port.mk>
