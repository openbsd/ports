# $OpenBSD: Makefile,v 1.2 2001/02/16 23:08:47 avsm Exp $

DISTNAME=	Finance-Quote-1.05
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	misc perl5
NEED_VERSION=	1.351

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Finance

HOMEPAGE=	http://finance-quote.sourceforge.net
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

BUILD_DEPENDS=	${LOCALBASE}/libdata/perl5/site_perl/HTML/TableExtract.pm::www/p5-HTML-TableExtract \
		${LOCALBASE}/libdata/perl5/site_perl/LWP/UserAgent.pm::www/p5-libwww
RUN_DEPENDS=	${BUILD_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
