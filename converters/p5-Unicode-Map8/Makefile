# $OpenBSD: Makefile,v 1.22 2013/03/11 01:30:28 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	module to implement efficient mapping tables

DISTNAME=	Unicode-Map8-0.12
REVISION=	3
CATEGORIES=	converters
MODULES=	cpan
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

RUN_DEPENDS=	converters/p5-Unicode-String

.include <bsd.port.mk>
