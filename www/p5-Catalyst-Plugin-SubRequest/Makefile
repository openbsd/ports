# $OpenBSD: Makefile,v 1.3 2006/12/25 13:40:28 simon Exp $

COMMENT= 	"map subrequests to actions in Catalyst"

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-SubRequest-0.10
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	www

MAINTAINER=	Simon Dassow <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/p5-Catalyst-Runtime \
		::devel/p5-File-Slurp

MAKE_ENV=	TEST_POD=yes

.include <bsd.port.mk>
