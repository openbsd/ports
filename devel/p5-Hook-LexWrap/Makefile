# $OpenBSD: Makefile,v 1.7 2011/04/10 19:11:58 jasper Exp $

COMMENT=	lexically scoped subroutine wrappers

MODULES=	cpan
DISTNAME=	Hook-LexWrap-0.24
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	demo

CONFIGURE_STYLE=	modbuild

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
