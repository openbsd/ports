# $OpenBSD: Makefile,v 1.6 2002/04/20 01:36:38 pvalchev Exp $

COMMENT=	"perl module to perform XSLT transformations"

DISTNAME=	XML-XSLT-0.32
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= XML

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERL_MODULES=   ${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=  ::textproc/p5-XML-Parser \
		::textproc/p5-XML-DOM
RUN_DEPENDS=    ${BUILD_DEPENDS}
LIB_DEPENDS=	exslt::textproc/libxslt

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
