# $OpenBSD: Makefile,v 1.10 2002/06/10 03:14:35 wilfried Exp $

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

BUILD_DEPENDS=	:p5-Time-HiRes->=1.19:devel/p5-Time-HiRes \
		:p5-MLDBM->=2:devel/p5-MLDBM \
		:p5-Params-Validate->=0.04:devel/p5-Params-Validate \
		:mod_perl-*:www/mod_perl
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
