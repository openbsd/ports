# $OpenBSD: Makefile,v 1.12 2017/12/07 13:12:44 espie Exp $

COMMENT=	concise attribute rewriting

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	HTML-RewriteAttributes-0.05
REVISION=	0
CATEGORIES=	www devel
FIX_EXTRACT_PERMISSIONS=Yes

# perl
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	www/p5-HTML-Parser \
		www/p5-URI

.include <bsd.port.mk>
