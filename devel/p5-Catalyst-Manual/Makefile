# $OpenBSD: Makefile,v 1.15 2016/03/20 19:56:14 naddy Exp $

COMMENT=	catalyst documentation

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Manual-5.9002
CATEGORIES=	devel

# there was a version with six digits behind the dot
EPOCH=		0

# perl
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV+=	TEST_POD=1

CONFIGURE_ARGS+=	--skipdeps

.include <bsd.port.mk>
