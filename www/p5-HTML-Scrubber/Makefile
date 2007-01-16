# $OpenBSD: Makefile,v 1.2 2007/01/16 17:52:06 simon Exp $

COMMENT=	"HTML cleaning module"

MODULES=	cpan
DISTNAME=	HTML-Scrubber-0.08
CATEGORIES=	www

MAINTAINER=	Sam Smith <s@msmith.net>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::www/p5-HTML-Parser

.include <bsd.port.mk>
