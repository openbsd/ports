# $OpenBSD: Makefile,v 1.16 2019/07/12 21:02:27 sthen Exp $

COMMENT=	syntax highlight for Mason

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Syntax-Highlight-Mason-1.23
CATEGORIES=	textproc www
EXTRACT_SUFX=	.tgz

# LGPL/Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-HTML-Mason \
		www/p5-HTML-Parser \
		textproc/p5-Syntax-Highlight-Perl \
		textproc/p5-Syntax-Highlight-HTML

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
