# $OpenBSD: Makefile,v 1.2 2007/09/29 21:21:54 simon Exp $

COMMENT=	module to get weather information from weather.com

MODULES=	cpan
DISTNAME=	Weather-Com-0.5.2
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Time-Format \
		::textproc/p5-XML-Simple \
		::www/p5-URI \
		::www/p5-libwww

.include <bsd.port.mk>
