# $OpenBSD: Makefile,v 1.15 2016/03/20 19:57:08 naddy Exp $

COMMENT=	syntax highlight for Mason

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Syntax-Highlight-Mason-1.23
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
