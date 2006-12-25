# $OpenBSD: Makefile,v 1.3 2006/12/25 13:40:28 simon Exp $

COMMENT=	"factory for Tree::Simple visitor objects"

MODULES=	cpan
DISTNAME=	Tree-Simple-VisitorFactory-0.10
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel

MAINTAINER=	Simon Dassow <simon@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Tree-Simple
REGRESS_DEPENDS=::devel/p5-Test-Exception

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
