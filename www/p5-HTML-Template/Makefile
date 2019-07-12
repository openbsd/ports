# $OpenBSD: Makefile,v 1.12 2019/07/12 20:50:54 sthen Exp $

COMMENT=	use HTML Templates from CGI scripts

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	HTML-Template-2.97
CATEGORIES=	www

# Perl
PERMIT_PACKAGE=	Yes

TEST_DEPENDS=	www/p5-CGI

MAKE_ENV+=	TEST_POD=Yes AUTHOR_TESTING=Yes

.include <bsd.port.mk>
