# $OpenBSD: Makefile,v 1.17 2014/11/12 04:42:13 benoit Exp $

SHARED_ONLY=	Yes

COMMENT= 	check if the documentation of a module is comprehensive

MODULES=	cpan
DISTNAME =	Pod-Coverage-0.23
CATEGORIES=	devel

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Devel-Symdump

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
