# $OpenBSD: Makefile,v 1.10 2017/04/29 10:46:23 benoit Exp $

COMMENT=	class for viewing Tree::Simple hierarchies

DISTNAME =	Tree-Simple-View-0.180001
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
