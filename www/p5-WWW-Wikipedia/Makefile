# $OpenBSD: Makefile,v 1.9 2010/07/02 13:15:32 stephan Exp $

COMMENT=		automated interface to the Wikipedia encyclopedia

DISTNAME=		WWW-Wikipedia-1.97
CATEGORIES=		www

MAINTAINER=		Stephan A. Rickauer <stephan@openbsd.org>

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
