# $OpenBSD: Makefile,v 1.13 2020/07/03 21:46:01 sthen Exp $

COMMENT=	use HTML Templates from CGI scripts

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	HTML-Template-2.97
CATEGORIES=	www
REVISION=	0

# Perl
PERMIT_PACKAGE=	Yes

TEST_DEPENDS=	www/p5-CGI

MAKE_ENV+=	TEST_POD=Yes AUTHOR_TESTING=Yes

.include <bsd.port.mk>
