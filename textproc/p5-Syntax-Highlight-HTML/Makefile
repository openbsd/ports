# $OpenBSD: Makefile,v 1.11 2016/03/20 19:57:08 naddy Exp $

COMMENT=	syntax highlight for HTML

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Syntax-Highlight-HTML-0.04
REVISION=	0
CATEGORIES=	textproc www

# Perl licence
PERMIT_PACKAGE_CDROM=   Yes

CONFIGURE_STYLE= modbuild
RUN_DEPENDS= www/p5-HTML-Parser

MAKE_ENV+=	TEST_POD=Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
