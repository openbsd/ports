# $OpenBSD: Makefile,v 1.14 2013/03/11 11:44:45 espie Exp $

COMMENT=	catalyst file storage backend for session data

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-Session-Store-File-0.18
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Cache-Cache \
		devel/p5-Class-Data-Inheritable \
		devel/p5-MRO-Compat \
		www/p5-Catalyst-Plugin-Session \
		www/p5-Catalyst-Runtime

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
