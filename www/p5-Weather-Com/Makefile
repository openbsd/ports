# $OpenBSD: Makefile,v 1.7 2011/04/16 11:57:01 simon Exp $

COMMENT=	module to get weather information from weather.com

MODULES=	cpan
DISTNAME=	Weather-Com-0.5.5
CATEGORIES=	www

CPAN_AUTHOR=	SCHNUECK

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Time-Format \
		textproc/p5-XML-Simple \
		www/p5-URI \
		www/p5-libwww
REGRESS_DEPENDS=	devel/p5-Test-MockObject

pre-configure:
	@rm ${WRKSRC}/lib/Weather/Com/Base.pm.orig

.include <bsd.port.mk>
