# $OpenBSD: Makefile,v 1.4 2006/11/17 16:02:48 espie Exp $

COMMENT=	"taint checking and input validation from web forms"

MODULES=	cpan
DISTNAME=	CGI-Untaint-1.26
PKGNAME=	p5-${DISTNAME}p0
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
