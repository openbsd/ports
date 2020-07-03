# $OpenBSD: Makefile,v 1.30 2020/07/03 21:44:47 sthen Exp $

COMMENT=	date calculations for the Gregorian calendar

MODULES=	cpan
DISTNAME=	Date-Calc-6.4
CATEGORIES=	devel
REVISION=	0

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB=	perl

RUN_DEPENDS=	math/p5-Bit-Vector>=6.2 \
		devel/p5-Carp-Clan>=5.3
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
