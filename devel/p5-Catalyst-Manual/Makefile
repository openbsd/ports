# $OpenBSD: Makefile,v 1.8 2009/10/27 00:42:26 jim Exp $

COMMENT=	catalyst documentation

MODULES=	cpan
DISTNAME=	Catalyst-Manual-5.8001
CATEGORIES=	devel

# there was a version with six digits behind the dot and we need to pad
# to that or updates would fail
PKGNAME=	p5-${DISTNAME}00

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
