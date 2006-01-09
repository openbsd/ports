# $OpenBSD: Makefile,v 1.12 2006/01/09 23:13:11 steven Exp $

COMMENT=	"module to obtain financial quotes from exchanges"

DISTNAME=	Finance-Quote-1.10
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	misc perl5

HOMEPAGE=	http://finance-quote.sourceforge.net

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Finance/}

RUN_DEPENDS=	:p5-HTML-TableExtract-*:www/p5-HTML-TableExtract \
		:p5-libwww-*:www/p5-libwww
BUILD_DEPENDS=	${RUN_DEPENDS}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

NO_REGRESS= 	Yes

PKG_ARCH= 	*	

.include <bsd.port.mk>
