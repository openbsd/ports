# $OpenBSD: Makefile,v 1.13 2013/03/11 10:50:23 espie Exp $

COMMENT=	simple tree object

MODULES=	cpan
DISTNAME=	Tree-Simple-1.18
REVISION=	1
CATEGORIES=	devel
USE_GROFF =	Yes

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

TEST_DEPENDS= devel/p5-Test-Exception \
		 devel/p5-Test-Memory-Cycle>=1.02

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE= modbuild

.include <bsd.port.mk>
