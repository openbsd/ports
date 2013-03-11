# $OpenBSD: Makefile,v 1.11 2013/03/11 11:44:45 espie Exp $

COMMENT=	FastMmap sessions for Catalyst (deprecated)

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-Session-FastMmap-0.13
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		devel/p5-Cache-FastMmap \
		devel/p5-Class-Accessor \
		devel/p5-Class-Data-Inheritable \
		devel/p5-MRO-Compat \
		www/p5-URI \
		www/p5-URI-Find

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
