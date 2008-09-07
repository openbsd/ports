# $OpenBSD: Makefile,v 1.10 2008/09/07 08:56:25 simon Exp $

COMMENT= 	catalyst plugin to Config::Any

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-ConfigLoader-0.21
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
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
