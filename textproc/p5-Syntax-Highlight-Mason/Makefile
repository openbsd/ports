# $OpenBSD: Makefile,v 1.13 2015/01/21 14:41:37 sthen Exp $

COMMENT=	syntax highlight for Mason

MODULES=	cpan
DISTNAME=	Syntax-Highlight-Mason-1.21
REVISION=	1
CATEGORIES=	textproc www
EXTRACT_SUFX=	.tgz

# LGPL/Artistic
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	www/p5-HTML-Mason \
		www/p5-HTML-Parser \
		textproc/p5-Syntax-Highlight-Perl \
		textproc/p5-Syntax-Highlight-HTML

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
