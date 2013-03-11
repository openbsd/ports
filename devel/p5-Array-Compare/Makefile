# $OpenBSD: Makefile,v 1.14 2013/03/11 10:50:13 espie Exp $

COMMENT=	Perl module for comparing arrays

MODULES=	cpan
DISTNAME=	Array-Compare-2.01
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

CPAN_AUTHOR=	DAVECROSS

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Moose

CONFIGURE_STYLE=modbuild
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
