# $OpenBSD: Makefile,v 1.5 2007/09/15 20:38:24 merdely Exp $
# Original from: Andy Lester <andy@petdance.com>

COMMENT=		check for HTML errors in a string or file

MODULES=		cpan
DISTNAME=		HTML-Lint-2.02
PKGNAME=		p5-${DISTNAME}p1
CATEGORIES=		www

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		:p5-HTML-Parser-*:www/p5-HTML-Parser

.include <bsd.port.mk>
