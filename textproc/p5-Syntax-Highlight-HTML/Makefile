# $OpenBSD: Makefile,v 1.12 2019/07/12 21:02:27 sthen Exp $

COMMENT=	syntax highlight for HTML

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Syntax-Highlight-HTML-0.04
REVISION=	0
CATEGORIES=	textproc www

# Perl licence
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE= modbuild
RUN_DEPENDS= www/p5-HTML-Parser

MAKE_ENV+=	TEST_POD=Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
