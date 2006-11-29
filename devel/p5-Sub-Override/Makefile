# $OpenBSD: Makefile,v 1.2 2006/11/29 08:23:30 espie Exp $

COMMENT=	"extension for easily overriding subroutines"

MODULES=	cpan
DISTNAME=	Sub-Override-0.08
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=::devel/p5-Test-Exception

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
