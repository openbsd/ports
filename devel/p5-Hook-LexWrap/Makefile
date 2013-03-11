# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:18 espie Exp $

COMMENT=	lexically scoped subroutine wrappers

MODULES=	cpan
DISTNAME=	Hook-LexWrap-0.24
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	demo

CONFIGURE_STYLE=	modbuild

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
