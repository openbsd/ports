# $OpenBSD: Makefile,v 1.2 2008/10/03 13:40:25 jasper Exp $

COMMENT=		generate new packages

MODULES=		cpan
DISTNAME=		Package-Generator-0.102
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=	::devel/p5-Params-Util

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
