# $OpenBSD: Makefile,v 1.12 2013/03/11 10:50:23 espie Exp $

COMMENT= 	check for pod coverage in your distribution

MODULES=	cpan
DISTNAME=	Test-Pod-Coverage-1.08
REVISION=	1
CATEGORIES=	devel
USE_GROFF =	Yes

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Pod-Coverage

.include <bsd.port.mk>
