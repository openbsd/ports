# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:18 espie Exp $

COMMENT=	module for computing digests while reading or writing

MODULES=	cpan
DISTNAME=	IO-Digest-0.10
REVISION=	1
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-PerlIO-via-dynamic>=0.11
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
