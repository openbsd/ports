# $OpenBSD: Makefile,v 1.19 2014/11/18 20:02:59 benoit Exp $

COMMENT=	HTML text formating class

MODULES=	cpan
DISTNAME=	HTML-Format-2.11
CATEGORIES=	www devel

# GPL
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	devel/p5-File-Slurp \
		www/p5-HTML-Tree \
		textproc/p5-Font-AFM
BUILD_DEPENDS=	${RUN_DEPENDS}
CONFIGURE_STYLE=	perl modbuild

.include <bsd.port.mk>
