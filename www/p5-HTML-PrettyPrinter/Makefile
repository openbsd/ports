# $OpenBSD: Makefile,v 1.2 2013/03/11 11:44:45 espie Exp $

COMMENT=		generate nice HTML files from HTML syntax trees

DISTNAME=		HTML-PrettyPrinter-0.03
CATEGORIES=		www textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		www/p5-HTML-Tagset \
			www/p5-HTML-Tree

.include <bsd.port.mk>
