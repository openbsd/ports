# $OpenBSD: Makefile,v 1.9 2015/11/05 19:09:01 jca Exp $

COMMENT=	module to get weather information from weather.com

MODULES=	cpan
DISTNAME=	Weather-Com-0.5.5
CATEGORIES=	www
REVISION=	0

CPAN_AUTHOR=	SCHNUECK

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
