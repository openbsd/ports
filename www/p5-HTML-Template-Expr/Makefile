# $OpenBSD: Makefile,v 1.10 2016/03/20 19:57:19 naddy Exp $

COMMENT=	use HTML Templates which allows expressions

MODULES=	cpan
PKG_ARCH=	*
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
