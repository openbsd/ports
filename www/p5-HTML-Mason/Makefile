# $OpenBSD: Makefile,v 1.3 2001/04/18 23:17:28 avsm Exp $

COMMENT=	"high-performance dynamic web authoring system"

DISTNAME=	HTML-Mason-1.02
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5
NEED_VERSION=	1.401
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= HTML

HOMEPAGE=	http://www.masonhq.com/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=	${PERL_MODULES}/${ARCH}-openbsd/Time/HiRes.pm::devel/p5-Time-HiRes \
		${PERL_MODULES}/MLDBM.pm::devel/p5-MLDBM \
		${PERL_MODULES}/Params/Validate.pm::devel/p5-Params-Validate \
		${LOCALBASE}/lib/mod_perl.so::www/mod_perl
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
