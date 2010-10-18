# $OpenBSD: Makefile,v 1.3 2010/10/18 17:48:04 espie Exp $

COMMENT=		generate new packages

MODULES=		cpan
DISTNAME=		Package-Generator-0.102
CATEGORIES=		devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=	::devel/p5-Params-Util

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
