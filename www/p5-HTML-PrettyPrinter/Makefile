# $OpenBSD: Makefile,v 1.3 2016/03/20 19:57:18 naddy Exp $

COMMENT=		generate nice HTML files from HTML syntax trees

DISTNAME=		HTML-PrettyPrinter-0.03
CATEGORIES=		www textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
PKG_ARCH=		*

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		www/p5-HTML-Tagset \
			www/p5-HTML-Tree

.include <bsd.port.mk>
