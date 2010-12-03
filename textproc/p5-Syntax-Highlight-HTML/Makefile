# $OpenBSD: Makefile,v 1.8 2010/12/03 11:46:49 ajacoutot Exp $

COMMENT=	syntax highlight for HTML

MODULES=	cpan
DISTNAME=	Syntax-Highlight-HTML-0.04
REVISION=	0
CATEGORIES=	textproc www
USE_GROFF =	Yes

# Perl licence
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= modbuild
RUN_DEPENDS= www/p5-HTML-Parser

MAKE_ENV+=	TEST_POD=Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg


.include <bsd.port.mk>
