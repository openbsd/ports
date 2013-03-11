# $OpenBSD: Makefile,v 1.10 2013/03/11 10:50:15 espie Exp $

COMMENT=	handle data in a hierarchical structure

MODULES=	cpan
DISTNAME=	Data-Hierarchy-0.34
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Clone>=0.15 \
		devel/p5-Test-Exception>=0.21
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
