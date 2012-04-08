# $OpenBSD: Makefile,v 1.12 2012/04/08 22:01:39 sthen Exp $

COMMENT=	catalyst documentation

MODULES=	cpan
DISTNAME=	Catalyst-Manual-5.9002
CATEGORIES=	devel
USE_GROFF =	Yes

# there was a version with six digits behind the dot
EPOCH=		0

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV+=	TEST_POD=1

CONFIGURE_ARGS+=	--skipdeps

.include <bsd.port.mk>
