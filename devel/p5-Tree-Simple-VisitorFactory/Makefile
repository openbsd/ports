# $OpenBSD: Makefile,v 1.6 2010/07/13 19:46:13 sthen Exp $

COMMENT=	factory for Tree::Simple visitor objects

MODULES=	cpan
DISTNAME=	Tree-Simple-VisitorFactory-0.10
REVISION=	1
CATEGORIES=	devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Tree-Simple
REGRESS_DEPENDS=::devel/p5-Test-Exception

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
