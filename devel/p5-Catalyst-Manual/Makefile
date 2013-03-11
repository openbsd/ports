# $OpenBSD: Makefile,v 1.13 2013/03/11 10:50:13 espie Exp $

COMMENT=	catalyst documentation

MODULES=	cpan
DISTNAME=	Catalyst-Manual-5.9002
CATEGORIES=	devel
USE_GROFF =	Yes

# there was a version with six digits behind the dot
EPOCH=		0

# perl
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV+=	TEST_POD=1

CONFIGURE_ARGS+=	--skipdeps

.include <bsd.port.mk>
