# $OpenBSD: Makefile,v 1.18 2013/10/11 23:51:35 naddy Exp $

COMMENT=	HTML text formating class

MODULES=	cpan
DISTNAME=	HTML-Format-2.10
CATEGORIES=	www devel

# GPL
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	devel/p5-File-Slurp \
		www/p5-HTML-Tree \
		textproc/p5-Font-AFM
BUILD_DEPENDS=	${RUN_DEPENDS}
CONFIGURE_STYLE=	perl modbuild

.include <bsd.port.mk>
