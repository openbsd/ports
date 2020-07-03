# $OpenBSD: Makefile,v 1.15 2020/07/03 21:45:56 sthen Exp $

COMMENT=	taint checking and input validation from web forms

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	CGI-Untaint-1.26
REVISION=	3
CATEGORIES=	www

# Same as Perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Universal-require

.include <bsd.port.mk>
