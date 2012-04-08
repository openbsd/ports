# $OpenBSD: Makefile,v 1.10 2012/04/08 21:58:40 sthen Exp $

COMMENT=	FastMmap sessions for Catalyst (deprecated)

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-Session-FastMmap-0.13
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		devel/p5-Cache-FastMmap \
		devel/p5-Class-Accessor \
		devel/p5-Class-Data-Inheritable \
		devel/p5-MRO-Compat \
		www/p5-URI \
		www/p5-URI-Find

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
