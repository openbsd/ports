# $OpenBSD: Makefile,v 1.19 2020/07/03 21:44:41 sthen Exp $

COMMENT=	catalyst documentation

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Manual-5.9002
CATEGORIES=	devel
REVISION=	2

# there was a version with six digits behind the dot
EPOCH=		0

# perl
PERMIT_PACKAGE=	Yes

MAKE_ENV+=	TEST_POD=1

CONFIGURE_ARGS+=	--skipdeps

.include <bsd.port.mk>
