# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:20 espie Exp $

COMMENT=	create dynamic PerlIO layers

MODULES=	cpan
DISTNAME=	PerlIO-via-dynamic-0.13
REVISION=	1
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Internals
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
