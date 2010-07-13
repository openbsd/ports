# $OpenBSD: Makefile,v 1.5 2010/07/13 20:14:23 sthen Exp $

COMMENT= 	Catalyst FormBuilder Base Controller

MODULES=	cpan
DISTNAME=	Catalyst-Controller-FormBuilder-0.04
REVISION=	0
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Class-Accessor \
		::devel/p5-Test-WWW-Mechanize-Catalyst \
		::devel/p5-Tie-IxHash \
		::www/p5-CGI-FormBuilder \
		::www/p5-Catalyst-Runtime \
		:p5-Class-Data-Inheritable->=0.04:devel/p5-Class-Data-Inheritable \
		:p5-Class-Inspector->=1.13:devel/p5-Class-Inspector
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
