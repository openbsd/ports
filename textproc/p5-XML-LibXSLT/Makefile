# $OpenBSD: Makefile,v 1.1.1.1 2001/04/19 09:43:09 shell Exp $

COMMENT=	'fast XSLT module for perl'

VERSION=	0.99_01
DISTNAME=	XML-LibXSLT-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
NEED_VERSION=	1.402

HOMEPAGE=	http://www.xmlsoft.org/XSLT/

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= XML

MAINTAINER=	Shell Hung <shell@openbsd.org>

LIB_DEPENDS=	xml2.5::textproc/libxml \
		xslt.0::textproc/libxslt

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
