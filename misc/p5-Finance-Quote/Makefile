# $OpenBSD: Makefile,v 1.11 2004/06/26 07:35:08 xsa Exp $

COMMENT=	"module to obtain financial quotes from exchanges"

DISTNAME=	Finance-Quote-1.08
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	misc perl5

HOMEPAGE=	http://finance-quote.sourceforge.net

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Finance/}

RUN_DEPENDS=	:p5-HTML-TableExtract-*:www/p5-HTML-TableExtract \
		:p5-libwww-*:www/p5-libwww
BUILD_DEPENDS=	${RUN_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
