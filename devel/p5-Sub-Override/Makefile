# $OpenBSD: Makefile,v 1.4 2010/10/18 17:48:07 espie Exp $

COMMENT=	extension for easily overriding subroutines

MODULES=	cpan
DISTNAME=	Sub-Override-0.08
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=::devel/p5-Test-Exception

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
