# $OpenBSD: Makefile,v 1.2 2001/05/06 04:11:49 lebel Exp $

COMMENT=	"trivial perl API for reading/writing XML"

DISTNAME=	XML-Simple-1.05
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
NEED_VERSION=	1.402
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= XML

HOMEPAGE=	http://www.web.co.nz/~grantm/cpan/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERL_MODULES=   ${LOCALBASE}/libdata/perl5/site_perl/${ARCH}-openbsd
BUILD_DEPENDS=  ${PERL_MODULES}/XML/Parser.pm::textproc/p5-XML-Parser \
		${PERL_MODULES}/Storable.pm::devel/p5-Storable
RUN_DEPENDS=    ${BUILD_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
