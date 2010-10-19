# $OpenBSD: Makefile,v 1.2 2010/10/19 08:02:54 espie Exp $

COMMENT=	use SSI from CGI scripts

MODULES=	cpan
DISTNAME=	CGI-SSI-0.92
CATEGORIES=	www
USE_GROFF =	Yes

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
