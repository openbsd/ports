# $OpenBSD: Makefile,v 1.2 2006/11/29 08:23:31 espie Exp $

COMMENT=	"factory for Tree::Simple visitor objects"

MODULES=	cpan
DISTNAME=	Tree-Simple-VisitorFactory-0.10
CATEGORIES=	devel

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Tree-Simple
REGRESS_DEPENDS=::devel/p5-Test-Exception

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
