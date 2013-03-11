# $OpenBSD: Makefile,v 1.8 2013/03/11 11:44:47 espie Exp $

COMMENT=	module to get weather information from weather.com

MODULES=	cpan
DISTNAME=	Weather-Com-0.5.5
CATEGORIES=	www

CPAN_AUTHOR=	SCHNUECK

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Time-Format \
		textproc/p5-XML-Simple \
		www/p5-URI \
		www/p5-libwww
TEST_DEPENDS=	devel/p5-Test-MockObject

pre-configure:
	@rm ${WRKSRC}/lib/Weather/Com/Base.pm.orig

.include <bsd.port.mk>
