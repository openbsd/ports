# $OpenBSD: Makefile,v 1.18 2016/03/20 19:56:32 naddy Exp $

COMMENT= 	check if the documentation of a module is comprehensive

MODULES=	cpan
DISTNAME =	Pod-Coverage-0.23
CATEGORIES=	devel

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	perl

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Devel-Symdump

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
