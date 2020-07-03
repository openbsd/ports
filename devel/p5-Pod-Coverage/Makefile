# $OpenBSD: Makefile,v 1.20 2020/07/03 21:45:06 sthen Exp $

COMMENT= 	check if the documentation of a module is comprehensive

MODULES=	cpan
DISTNAME =	Pod-Coverage-0.23
CATEGORIES=	devel
REVISION =	0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB=	perl

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Devel-Symdump

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
