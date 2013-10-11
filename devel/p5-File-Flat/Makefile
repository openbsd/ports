# $OpenBSD: Makefile,v 1.9 2013/10/11 23:48:48 naddy Exp $

COMMENT=	implements a flat filesystem

MODULES=	cpan

DISTNAME=	File-Flat-0.96
REVISION=	2
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-prefork \
			devel/p5-File-NCopy \
			devel/p5-File-Remove \
			devel/p5-File-Slurp
BUILD_DEPENDS=		${RUN_DEPENDS}
TEST_DEPENDS=	devel/p5-Test-ClassAPI

.include <bsd.port.mk>
