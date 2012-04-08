# $OpenBSD: Makefile,v 1.10 2012/04/08 21:58:30 sthen Exp $

COMMENT=	plugin to Data::FormValidator for catalyst (deprecated)

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-FormValidator-0.094
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		devel/p5-Data-FormValidator \
		devel/p5-Moose \
		devel/p5-MRO-Compat

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
