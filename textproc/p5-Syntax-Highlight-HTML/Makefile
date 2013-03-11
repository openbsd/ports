# $OpenBSD: Makefile,v 1.9 2013/03/11 11:42:44 espie Exp $

COMMENT=	syntax highlight for HTML

MODULES=	cpan
DISTNAME=	Syntax-Highlight-HTML-0.04
REVISION=	0
CATEGORIES=	textproc www
USE_GROFF =	Yes

# Perl licence
PERMIT_PACKAGE_CDROM=   Yes

CONFIGURE_STYLE= modbuild
RUN_DEPENDS= www/p5-HTML-Parser

MAKE_ENV+=	TEST_POD=Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg


.include <bsd.port.mk>
