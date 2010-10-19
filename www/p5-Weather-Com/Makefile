# $OpenBSD: Makefile,v 1.4 2010/10/19 08:02:57 espie Exp $

COMMENT=	module to get weather information from weather.com

MODULES=	cpan
DISTNAME=	Weather-Com-0.5.3
CATEGORIES=	www
USE_GROFF =	Yes

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
