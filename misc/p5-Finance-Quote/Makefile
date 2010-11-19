# $OpenBSD: Makefile,v 1.19 2010/11/19 07:23:12 espie Exp $

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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# Tests exist though not enabled
NO_REGRESS= 	Yes

.include <bsd.port.mk>
