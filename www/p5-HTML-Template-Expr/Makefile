# $OpenBSD: Makefile,v 1.9 2013/10/11 23:51:41 naddy Exp $

COMMENT=	use HTML Templates which allows expressions

MODULES=	cpan
DISTNAME=	HTML-Template-Expr-0.07
CATEGORIES=	www

HOMEPAGE=	http://sourceforge.net/projects/html-template/

MAINTAINER=	Jim Dew <jdew@yggdrasil.ca>

# GPL/Artistic license
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	www/p5-HTML-Template \
		devel/p5-Parse-RecDescent

.include <bsd.port.mk>
