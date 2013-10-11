# $OpenBSD: Makefile,v 1.23 2013/10/11 23:48:16 naddy Exp $

SHARED_ONLY=	Yes

COMMENT=	module to implement efficient mapping tables

DISTNAME=	Unicode-Map8-0.12
REVISION=	3
CATEGORIES=	converters
MODULES=	cpan

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

RUN_DEPENDS=	converters/p5-Unicode-String

.include <bsd.port.mk>
