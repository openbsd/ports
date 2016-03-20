# $OpenBSD: Makefile,v 1.15 2016/03/20 19:56:40 naddy Exp $

COMMENT=	simple tree object

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Tree-Simple-1.18
REVISION=	1
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

TEST_DEPENDS= devel/p5-Test-Exception \
		 devel/p5-Test-Memory-Cycle>=1.02

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE= modbuild

.include <bsd.port.mk>
