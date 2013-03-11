# $OpenBSD: Makefile,v 1.10 2013/03/11 10:50:14 espie Exp $

COMMENT=	add / call inheritable triggers

MODULES=	cpan
DISTNAME=	Class-Trigger-0.11
REVISION=	1
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Data-Inheritable \
		devel/p5-IO-stringy

.include <bsd.port.mk>
