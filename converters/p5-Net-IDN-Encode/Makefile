# $OpenBSD: Makefile,v 1.16 2016/11/28 16:55:08 bluhm Exp $

COMMENT=		Internationalizing Domain Names in Applications

DISTNAME=		Net-IDN-Encode-2.300
REVISION =		0

CATEGORIES=		net converters

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB=		perl

MODULES=		cpan

CPAN_AUTHOR=		CFAERBER

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		converters/p5-Net-IDN-Nameprep
TEST_DEPENDS=		devel/p5-Test-NoWarnings \
			devel/p5-Test-Pod-Coverage \
			devel/p5-Test-Pod

.include <bsd.port.mk>
