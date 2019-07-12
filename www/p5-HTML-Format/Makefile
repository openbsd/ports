# $OpenBSD: Makefile,v 1.21 2019/07/12 21:02:28 sthen Exp $

COMMENT=	HTML text formating class

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	HTML-Format-2.11
CATEGORIES=	www devel

# GPL
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-File-Slurp \
		www/p5-HTML-Tree \
		textproc/p5-Font-AFM
BUILD_DEPENDS=	${RUN_DEPENDS}
CONFIGURE_STYLE=	perl modbuild

.include <bsd.port.mk>
