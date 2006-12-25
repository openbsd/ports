# $OpenBSD: Makefile,v 1.3 2006/12/25 13:40:28 simon Exp $

COMMENT= 	"FastMmap sessions for Catalyst"

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-Session-FastMmap-0.12
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	www

MAINTAINER=	Simon Dassow <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/p5-Catalyst-Runtime \
		::devel/p5-Cache-FastMmap \
		::devel/p5-Class-Accessor \
		::devel/p5-Class-Data-Inheritable \
		::www/p5-URI \
		::www/p5-URI-Find

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
