# $OpenBSD: Makefile,v 1.13 2019/07/12 21:02:28 sthen Exp $

COMMENT=	concise attribute rewriting

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	HTML-RewriteAttributes-0.05
REVISION=	0
CATEGORIES=	www devel
FIX_EXTRACT_PERMISSIONS=Yes

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-HTML-Parser \
		www/p5-URI

.include <bsd.port.mk>
