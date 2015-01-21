# $OpenBSD: Makefile,v 1.10 2015/01/21 14:41:37 sthen Exp $

COMMENT=	syntax highlight for HTML

MODULES=	cpan
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
