# $OpenBSD: Makefile,v 1.5 2002/03/21 21:09:19 espie Exp $

COMMENT=	"module to obtain financial quotes from exchanges"

DISTNAME=	Finance-Quote-1.05
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	misc perl5
NEED_VERSION=	1.515

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Finance

HOMEPAGE=	http://finance-quote.sourceforge.net
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

BUILD_DEPENDS=	::www/p5-HTML-TableExtract \
		::www/p5-libwww
RUN_DEPENDS=	${BUILD_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
