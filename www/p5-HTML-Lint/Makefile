# $OpenBSD: Makefile,v 1.6 2008/10/02 23:10:21 jasper Exp $
# Original from: Andy Lester <andy@petdance.com>

COMMENT=		check for HTML errors in a string or file

MODULES=		cpan
DISTNAME=		HTML-Lint-2.04
CATEGORIES=		www

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		:p5-HTML-Parser-*:www/p5-HTML-Parser

.include <bsd.port.mk>
