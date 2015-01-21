# $OpenBSD: Makefile,v 1.11 2015/01/21 14:42:32 sthen Exp $

COMMENT=	taint checking and input validation from web forms

MODULES=	cpan
DISTNAME=	CGI-Untaint-1.26
REVISION=	1
CATEGORIES=	www

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Universal-require

.include <bsd.port.mk>
