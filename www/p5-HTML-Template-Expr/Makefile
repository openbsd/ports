# $OpenBSD: Makefile,v 1.12 2019/07/12 20:50:54 sthen Exp $

COMMENT=	use HTML Templates which allows expressions

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	HTML-Template-Expr-0.07
CATEGORIES=	www
REVISION=	0

HOMEPAGE=	http://sourceforge.net/projects/html-template/

# GPL/Artistic license
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	www/p5-HTML-Template \
		devel/p5-Parse-RecDescent

.include <bsd.port.mk>
