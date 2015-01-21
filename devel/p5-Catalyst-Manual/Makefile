# $OpenBSD: Makefile,v 1.14 2015/01/21 14:27:56 sthen Exp $

COMMENT=	catalyst documentation

MODULES=	cpan
DISTNAME=	Catalyst-Manual-5.9002
CATEGORIES=	devel

# there was a version with six digits behind the dot
EPOCH=		0

# perl
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV+=	TEST_POD=1

CONFIGURE_ARGS+=	--skipdeps

.include <bsd.port.mk>
