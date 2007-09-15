# $OpenBSD: Makefile,v 1.5 2007/09/15 20:59:38 merdely Exp $

COMMENT=	Textile for Catalyst

DISTNAME=	Catalyst-Plugin-Textile-0.01
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	textproc

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan

RUN_DEPENDS=	::textproc/p5-Text-Textile \
		::www/p5-Catalyst-Runtime

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
