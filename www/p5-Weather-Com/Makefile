# $OpenBSD: Makefile,v 1.12 2020/07/03 21:46:07 sthen Exp $

COMMENT=	module to get weather information from weather.com

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Weather-Com-0.5.5
CATEGORIES=	www
REVISION=	1

CPAN_AUTHOR=	SCHNUECK

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Time-Format \
		textproc/p5-XML-Simple \
		www/p5-URI \
		www/p5-libwww
TEST_DEPENDS=	devel/p5-Test-MockObject

pre-configure:
	@rm ${WRKSRC}/lib/Weather/Com/Base.pm.orig

.include <bsd.port.mk>
