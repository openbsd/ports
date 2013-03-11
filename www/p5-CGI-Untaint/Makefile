# $OpenBSD: Makefile,v 1.10 2013/03/11 11:44:44 espie Exp $

COMMENT=	taint checking and input validation from web forms

MODULES=	cpan
DISTNAME=	CGI-Untaint-1.26
REVISION=	1
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Universal-require

.include <bsd.port.mk>
