# $OpenBSD: Makefile,v 1.7 2002/03/21 21:25:54 espie Exp $

COMMENT=	"high-performance dynamic web authoring system"

DISTNAME=	HTML-Mason-1.03
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= HTML

HOMEPAGE=	http://www.masonhq.com/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=	::devel/p5-Time-HiRes \
		::devel/p5-MLDBM \
		::devel/p5-Params-Validate \
		::www/mod_perl
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
