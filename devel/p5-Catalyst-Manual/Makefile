# $OpenBSD: Makefile,v 1.18 2019/07/12 20:44:46 sthen Exp $

COMMENT=	catalyst documentation

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Manual-5.9002
CATEGORIES=	devel
REVISION=	1

# there was a version with six digits behind the dot
EPOCH=		0

# perl
PERMIT_PACKAGE=	Yes

MAKE_ENV+=	TEST_POD=1

CONFIGURE_ARGS+=	--skipdeps

.include <bsd.port.mk>
