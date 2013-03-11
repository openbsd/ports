# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:17 espie Exp $

COMMENT=	implements a flat filesystem

MODULES=	cpan

DISTNAME=	File-Flat-0.96
REVISION=	2
CATEGORIES=	devel
USE_GROFF =	Yes

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-prefork \
			devel/p5-File-NCopy \
			devel/p5-File-Remove \
			devel/p5-File-Slurp
BUILD_DEPENDS=		${RUN_DEPENDS}
TEST_DEPENDS=	devel/p5-Test-ClassAPI

.include <bsd.port.mk>
