# $OpenBSD: Makefile,v 1.14 2019/07/12 20:50:50 sthen Exp $

COMMENT=	taint checking and input validation from web forms

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	CGI-Untaint-1.26
REVISION=	2
CATEGORIES=	www

# Same as Perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Universal-require

.include <bsd.port.mk>
