# $OpenBSD: Makefile,v 1.12 2020/07/03 21:45:19 sthen Exp $

COMMENT=	class for viewing Tree::Simple hierarchies

DISTNAME =	Tree-Simple-View-0.180001
CATEGORIES=	devel
REVISION =	0

MODULES=	cpan
PKG_ARCH=	*

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/p5-Class-Throwable>=0.1 \
			devel/p5-Test-Exception>=0.15 \
			devel/p5-Test-LongString \
			devel/p5-Tree-Simple>=1.07

.include <bsd.port.mk>
