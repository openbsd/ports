# $OpenBSD: Makefile,v 1.7 2009/10/14 13:57:00 jasper Exp $

COMMENT=		automated interface to the Wikipedia encyclopedia

DISTNAME=		WWW-Wikipedia-1.96
CATEGORIES=		www

MAINTAINER=		Stephan A. Rickauer <stephan.rickauer@startek.ch>

MODULES=		cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::textproc/p5-Text-Autoformat \
			::www/p5-libwww \
			::www/p5-URI
REGRESS_DEPENDS=	::devel/p5-Test-Exception

.include <bsd.port.mk>
