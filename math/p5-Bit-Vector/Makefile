# $OpenBSD: Makefile,v 1.17 2013/03/19 08:37:54 benoit Exp $

SHARED_ONLY=	Yes

COMMENT=	library of advanced math functions

MODULES=	cpan
DISTNAME =	Bit-Vector-7.2
CATEGORIES=	math

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

BUILD_DEPENDS=  ${RUN_DEPENDS}
RUN_DEPENDS=    devel/p5-Carp-Clan>=5.3

.include <bsd.port.mk>
