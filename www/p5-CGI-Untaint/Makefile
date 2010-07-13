# $OpenBSD: Makefile,v 1.6 2010/07/13 20:14:23 sthen Exp $

COMMENT=	taint checking and input validation from web forms

MODULES=	cpan
DISTNAME=	CGI-Untaint-1.26
REVISION=	0
CATEGORIES=	www

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Universal-require

.include <bsd.port.mk>
