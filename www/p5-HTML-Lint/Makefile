# $OpenBSD: Makefile,v 1.10 2010/12/03 11:46:52 ajacoutot Exp $
# Original from: Andy Lester <andy@petdance.com>

COMMENT=		check for HTML errors in a string or file

MODULES=		cpan
DISTNAME=		HTML-Lint-2.06
REVISION=		0
CATEGORIES=		www
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		www/p5-HTML-Parser

.include <bsd.port.mk>
