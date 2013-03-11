# $OpenBSD: Makefile,v 1.17 2013/03/11 11:44:45 espie Exp $

COMMENT=	HTML text formating class

MODULES=	cpan
DISTNAME=	HTML-Format-2.10
CATEGORIES=	www devel
USE_GROFF =	Yes

# GPL
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	devel/p5-File-Slurp \
		www/p5-HTML-Tree \
		textproc/p5-Font-AFM
BUILD_DEPENDS=	${RUN_DEPENDS}
CONFIGURE_STYLE=	perl modbuild

.include <bsd.port.mk>
