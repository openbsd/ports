# $OpenBSD: Makefile,v 1.4 2006/12/25 13:40:28 simon Exp $

COMMENT=	"create and manipulate PAR distributions"

MODULES=	cpan
DISTNAME=	PAR-Dist-0.21
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel archivers

MAINTAINER=	Simon Dassow <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	PERL_TEST_POD=Yes TEST_POD=Yes

.include <bsd.port.mk>
