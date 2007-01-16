# $OpenBSD: Makefile,v 1.2 2007/01/16 17:52:06 simon Exp $

COMMENT=	"inserts data into HTML input and select tags"

MODULES=	cpan
DISTNAME=	HTML-FillInForm-1.06
CATEGORIES=	www

# Perl/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::www/p5-HTML-Parser

.include <bsd.port.mk>
