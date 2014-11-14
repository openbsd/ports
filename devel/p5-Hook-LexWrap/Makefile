# $OpenBSD: Makefile,v 1.9 2014/11/14 13:53:12 benoit Exp $

COMMENT=	lexically scoped subroutine wrappers

MODULES=	cpan
DISTNAME=	Hook-LexWrap-0.25
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	demo

CONFIGURE_STYLE=	modbuild

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
