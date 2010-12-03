# $OpenBSD: Makefile,v 1.13 2010/12/03 11:44:34 ajacoutot Exp $

COMMENT=	create and manipulate PAR distributions

MODULES=	cpan
DISTNAME=	PAR-Dist-0.44
REVISION=	0
CATEGORIES=	devel archivers
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	PERL_TEST_POD=Yes TEST_POD=Yes

.include <bsd.port.mk>
