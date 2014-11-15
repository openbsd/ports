# $OpenBSD: Makefile,v 1.19 2014/11/15 16:48:24 benoit Exp $

SHARED_ONLY=	Yes

COMMENT=	library of advanced math functions

MODULES=	cpan
DISTNAME =	Bit-Vector-7.3
CATEGORIES=	math

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

BUILD_DEPENDS=  ${RUN_DEPENDS}
RUN_DEPENDS=    devel/p5-Carp-Clan>=5.3

.include <bsd.port.mk>
