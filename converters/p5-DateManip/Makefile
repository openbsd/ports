# $OpenBSD: Makefile,v 1.15 2010/10/18 17:06:06 espie Exp $

COMMENT=	manipulate dates in perl
DISTNAME=	Date-Manip-5.54
PKGNAME=	p5-DateManip-5.54
CATEGORIES=	converters
MODULES=	cpan
USE_GROFF =	Yes

HOMEPAGE=	http://www.cise.ufl.edu/~sbeck/

MAINTAINER=	Marc Espie <espie@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	modbuild

MAKE_ENV+=      TEST_POD=Yes

.include <bsd.port.mk>
