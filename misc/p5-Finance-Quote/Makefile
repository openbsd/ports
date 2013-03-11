# $OpenBSD: Makefile,v 1.20 2013/03/11 11:23:57 espie Exp $

COMMENT=	module to obtain financial quotes from exchanges

MODULES=	cpan
DISTNAME=	Finance-Quote-1.13
CATEGORIES=	misc
USE_GROFF =	Yes

HOMEPAGE=	http://finance-quote.sourceforge.net

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

RUN_DEPENDS=	www/p5-HTML-TableExtract \
		www/p5-libwww

# GPL
PERMIT_PACKAGE_CDROM=	Yes

# Tests exist though not enabled
NO_TEST= 	Yes

.include <bsd.port.mk>
