# $OpenBSD: Makefile,v 1.6 2001/06/07 17:08:17 shell Exp $

COMMENT=	"fast XSLT module for perl"

VERSION=	1.05
DISTNAME=	XML-LibXSLT-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
NEED_VERSION=	1.408

HOMEPAGE=	http://www.axkit.org/

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	XML

MAINTAINER=	Shell Hung <shell@openbsd.org>


PERL_MODULE=	${LOCALBASE}/libdata/perl5/site_perl/${MACHINE_ARCH}-openbsd
BUILD_DEPENDS=	${PERL_MODULE}/XML/LibXML.pm::textproc/p5-XML-LibXML
RUN_DPENDS=	${BUILD_DEPENDS}
LIB_DEPENDS=	xml2.5::textproc/libxml \
		xslt.0::textproc/libxslt
		

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
