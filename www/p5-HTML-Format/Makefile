# $OpenBSD: Makefile,v 1.22 2020/07/03 21:46:00 sthen Exp $

COMMENT=	HTML text formating class

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	HTML-Format-2.11
CATEGORIES=	www devel
REVISION=	0

# GPL
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-File-Slurp \
		www/p5-HTML-Tree \
		textproc/p5-Font-AFM
BUILD_DEPENDS=	${RUN_DEPENDS}
CONFIGURE_STYLE=	perl modbuild

.include <bsd.port.mk>
