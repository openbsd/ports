# $OpenBSD: Makefile,v 1.9 2002/06/07 21:37:12 wilfried Exp $

COMMENT=	"high-performance dynamic web authoring system"

DISTNAME=	HTML-Mason-1.03
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTML/}

HOMEPAGE=	http://www.masonhq.com/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	::devel/p5-Time-HiRes \
		::devel/p5-MLDBM \
		::devel/p5-Params-Validate \
		::www/mod_perl
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
