# $OpenBSD: Makefile,v 1.7 2010/10/19 08:02:55 espie Exp $

COMMENT= 	HTML widget and validation framework for Catalyst

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-HTML-Widget-1.1
REVISION=	1
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/p5-Catalyst-Runtime \
		::www/p5-HTML-Widget

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
