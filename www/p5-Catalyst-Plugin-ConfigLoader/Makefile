# $OpenBSD: Makefile,v 1.5 2007/05/05 17:44:51 simon Exp $

COMMENT= 	"catalyst plugin to Config::Any"

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-ConfigLoader-0.13
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Config-Any \
		::devel/p5-Data-Visitor \
		::devel/p5-Module-Pluggable \
		::www/p5-Catalyst-Runtime

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
