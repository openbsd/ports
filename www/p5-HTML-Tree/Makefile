# $OpenBSD: Makefile,v 1.3 2001/05/06 04:22:56 lebel Exp $

COMMENT=	"perl parser that builds an HTML tree"

DISTNAME=	HTML-Tree-3.11
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5
NEED_VERSION=	1.402
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= HTML

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=  ${PERL_MODULES}/${ARCH}-openbsd/HTML/Entities.pm::www/p5-HTML-Parser \
		${PERL_MODULES}/HTML/Tagset.pm::www/p5-HTML-Tagset
RUN_DEPENDS=    ${BUILD_DEPENDS}

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
