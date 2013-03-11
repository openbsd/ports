# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:12 espie Exp $

COMMENT=	represent a series of changes in annotate form

MODULES=	cpan
DISTNAME=	Algorithm-Annotate-0.10
REVISION=	1
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes

USE_GROFF =	Yes
RUN_DEPENDS=	devel/p5-Algorithm-Diff>=1.1901
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
