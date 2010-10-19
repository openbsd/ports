# $OpenBSD: Makefile,v 1.7 2010/10/19 08:02:54 espie Exp $

COMMENT=	taint checking and input validation from web forms

MODULES=	cpan
DISTNAME=	CGI-Untaint-1.26
REVISION=	0
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Universal-require

.include <bsd.port.mk>
