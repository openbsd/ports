# $OpenBSD: Makefile,v 1.14 2008/12/08 12:20:17 pea Exp $

COMMENT=	manipulate dates in perl
DISTNAME=	Date-Manip-5.54
PKGNAME=	p5-DateManip-5.54
CATEGORIES=	converters
MODULES=	cpan

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
