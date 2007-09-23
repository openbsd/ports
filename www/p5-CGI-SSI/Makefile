# $OpenBSD: Makefile,v 1.1.1.1 2007/09/23 22:31:39 simon Exp $

COMMENT=	use SSI from CGI scripts

MODULES=	cpan
DISTNAME=	CGI-SSI-0.92
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Time-TimeDate \
		::www/p5-HTML-SimpleParse \
		::www/p5-libwww

.include <bsd.port.mk>
