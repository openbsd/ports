# $OpenBSD: Makefile,v 1.17 2008/07/12 14:12:10 dhill Exp $

COMMENT=	module to obtain financial quotes from exchanges

MODULES=	cpan
DISTNAME=	Finance-Quote-1.13
CATEGORIES=	misc

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
