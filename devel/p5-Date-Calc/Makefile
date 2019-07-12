# $OpenBSD: Makefile,v 1.29 2019/07/12 20:44:50 sthen Exp $

COMMENT=	date calculations for the Gregorian calendar

MODULES=	cpan
DISTNAME=	Date-Calc-6.4
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB=	perl

RUN_DEPENDS=	math/p5-Bit-Vector>=6.2 \
		devel/p5-Carp-Clan>=5.3
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
