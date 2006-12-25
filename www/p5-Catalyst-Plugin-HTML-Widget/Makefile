# $OpenBSD: Makefile,v 1.3 2006/12/25 13:40:28 simon Exp $

COMMENT= 	"HTML widget and validation framework for Catalyst"

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-HTML-Widget-1.1
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	www

MAINTAINER=	Simon Dassow <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/p5-Catalyst-Runtime \
		::www/p5-HTML-Widget

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
