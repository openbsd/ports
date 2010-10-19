# $OpenBSD: Makefile,v 1.8 2010/10/19 08:02:55 espie Exp $
# Original from: Andy Lester <andy@petdance.com>

COMMENT=		check for HTML errors in a string or file

MODULES=		cpan
DISTNAME=		HTML-Lint-2.06
CATEGORIES=		www
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		:p5-HTML-Parser-*:www/p5-HTML-Parser

.include <bsd.port.mk>
