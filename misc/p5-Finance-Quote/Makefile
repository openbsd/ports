# $OpenBSD: Makefile,v 1.8 2002/07/10 20:48:14 avsm Exp $

COMMENT=	"module to obtain financial quotes from exchanges"

DISTNAME=	Finance-Quote-1.05
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	misc perl5
NEED_VERSION=	1.515

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Finance/}

HOMEPAGE=	http://finance-quote.sourceforge.net

BUILD_DEPENDS=	:p5-HTML-TableExtract-*:www/p5-HTML-TableExtract \
		:p5-libwww-*:www/p5-libwww
RUN_DEPENDS=	${BUILD_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
