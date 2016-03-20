# $OpenBSD: Makefile,v 1.28 2016/03/20 19:56:18 naddy Exp $

COMMENT=	date calculations for the Gregorian calendar

MODULES=	cpan
DISTNAME=	Date-Calc-6.4
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	perl

RUN_DEPENDS=	math/p5-Bit-Vector>=6.2 \
		devel/p5-Carp-Clan>=5.3
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
