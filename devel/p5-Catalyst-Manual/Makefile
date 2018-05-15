# $OpenBSD: Makefile,v 1.17 2018/05/15 11:21:21 espie Exp $

COMMENT=	catalyst documentation

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Manual-5.9002
CATEGORIES=	devel
REVISION=	1

# there was a version with six digits behind the dot
EPOCH=		0

# perl
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV+=	TEST_POD=1

CONFIGURE_ARGS+=	--skipdeps

.include <bsd.port.mk>
