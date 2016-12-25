# $OpenBSD: Makefile,v 1.16 2016/12/25 15:38:45 zhuk Exp $

COMMENT=	catalyst documentation

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Manual-5.9002
CATEGORIES=	devel
REVISION=	0

# there was a version with six digits behind the dot
EPOCH=		0

# perl
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV+=	TEST_POD=1

CONFIGURE_ARGS+=	--skipdeps

.include <bsd.port.mk>
