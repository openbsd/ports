# $OpenBSD: Makefile,v 1.18 2010/10/18 20:52:09 espie Exp $

COMMENT=	module to obtain financial quotes from exchanges

MODULES=	cpan
DISTNAME=	Finance-Quote-1.13
CATEGORIES=	misc
USE_GROFF =	Yes

HOMEPAGE=	http://finance-quote.sourceforge.net

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

RUN_DEPENDS=	:p5-HTML-TableExtract-*:www/p5-HTML-TableExtract \
		:p5-libwww-*:www/p5-libwww

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# Tests exist though not enabled
NO_REGRESS= 	Yes

.include <bsd.port.mk>
