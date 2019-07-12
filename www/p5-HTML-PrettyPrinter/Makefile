# $OpenBSD: Makefile,v 1.4 2019/07/12 20:50:54 sthen Exp $

COMMENT=		generate nice HTML files from HTML syntax trees

DISTNAME=		HTML-PrettyPrinter-0.03
CATEGORIES=		www textproc

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		www/p5-HTML-Tagset \
			www/p5-HTML-Tree

.include <bsd.port.mk>
