# $OpenBSD: Makefile,v 1.6 2010/12/03 11:44:35 ajacoutot Exp $

COMMENT=	extension for easily overriding subroutines

MODULES=	cpan
DISTNAME=	Sub-Override-0.08
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=devel/p5-Test-Exception

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
