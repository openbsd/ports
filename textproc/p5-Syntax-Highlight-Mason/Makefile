# $OpenBSD: Makefile,v 1.17 2020/07/03 21:45:49 sthen Exp $

COMMENT=	syntax highlight for Mason

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Syntax-Highlight-Mason-1.23
CATEGORIES=	textproc www
EXTRACT_SUFX=	.tgz
REVISION =	0

# LGPL/Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-HTML-Mason \
		www/p5-HTML-Parser \
		textproc/p5-Syntax-Highlight-Perl \
		textproc/p5-Syntax-Highlight-HTML

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
