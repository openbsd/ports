# $OpenBSD: Makefile,v 1.11 2019/05/27 11:34:23 cwen Exp $

COMMENT=	use HTML Templates from CGI scripts

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	HTML-Template-2.97
CATEGORIES=	www

# Perl
PERMIT_PACKAGE_CDROM=	Yes

TEST_DEPENDS=	www/p5-CGI

MAKE_ENV+=	TEST_POD=Yes AUTHOR_TESTING=Yes

.include <bsd.port.mk>
