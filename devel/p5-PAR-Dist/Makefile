# $OpenBSD: Makefile,v 1.11 2009/02/03 00:00:02 simon Exp $

COMMENT=	create and manipulate PAR distributions

MODULES=	cpan
DISTNAME=	PAR-Dist-0.44
CATEGORIES=	devel archivers

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	PERL_TEST_POD=Yes TEST_POD=Yes

.include <bsd.port.mk>
